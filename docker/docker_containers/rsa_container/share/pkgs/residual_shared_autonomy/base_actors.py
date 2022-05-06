#!/usr/bin/python
# -*- coding: utf8 -*- 

"""Base actors on which residuals are learned."""
import numpy as np
import time
import torch
from residual_shared_autonomy.imitation_learning import BCNet
from residual_shared_autonomy.lunar_lander import lunar_lander_policy_fn
from residual_shared_autonomy.drone_sim import drone_ppo_policy_fn
from dl import Checkpointer
import gin
import os
import pygame

# ros library
import rospy
from ur10_python_interface.srv import SolveIk
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from geometry_msgs.msg import PoseStamped, Quaternion, Pose


@gin.configurable
class ZeroActor(object):
    """Output random actions."""

    def __init__(self, env):
        """Init."""
        self.action_space = env.action_space
        self.batch_size = env.num_envs

    def __call__(self, ob):
        """Act."""
        return np.zeros([self.batch_size] + list(self.action_space.shape),
                        dtype=np.float32)


@gin.configurable
class RandomActor(object):
    """Output random actions."""

    def __init__(self, env):
        """Init."""
        self.action_space = env.action_space
        self.batch_size = env.num_envs

    def __call__(self, ob):
        """Act."""
        return np.asarray([self.action_space.sample()
                           for _ in range(self.batch_size)])
        
@gin.configurable
class UR10RandomActor(object):
    def __init__(self, env, action_period=5, space_type="task"):
        self.action_space = env.action_space
        self.batch_size = env.num_envs
        self.action_cnt = action_period
        self.action_period = action_period
        self.space_type = space_type
        
    def ik_solver(self, target_pose):
        rospy.wait_for_service('solve_ik')
        try:
            solve_ik = rospy.ServiceProxy('solve_ik', SolveIk)
            res = solve_ik(target_pose)
            return res
        except rospy.ServiceException as e:
            print("Service call failed: %s"%e)

    def __call__(self, ob):
        """Act."""
        self.action_cnt += 1
        if self.action_cnt > self.action_period:
            if self.space_type == "joint":
                self.action_samples = [self.action_space.sample() for _ in range(self.batch_size)]
            else:
                print("task")
                self.action_samples = [self.action_space.sample() for _ in range(self.batch_size)]
            self.action_cnt = 0
            #print("action: ", self.action_samples)
        #print(type(self.action_space.sample()))
        return np.asarray(self.action_samples)

#####################################
# Change these to match your joystick
RIGHT_UP_AXIS = 4
RIGHT_SIDE_AXIS = 3
LEFT_UP_AXIS = 1
LEFT_SIDE_AXIS = 0
#####################################

@gin.configurable
class UR10JoystickActor(object):
    """Joystick Controller for Lunar Lander."""

    def __init__(self, env, fps=50):
        """Init."""
        if env.num_envs > 1:
            raise ValueError("Only one env can be controlled with the joystick.")
        self.env = env
        self.joystick_action = np.array([[0., 0.], [0., 0.]], dtype=np.float32)  # noop
        self.human_action = np.array([[0., 0., 0., 0., 0., 0.]], dtype=np.float32)
        self.button = np.array([0], dtype=np.int32)
        pygame.joystick.init()
        joysticks = [pygame.joystick.Joystick(x)
                     for x in range(pygame.joystick.get_count())]
        if len(joysticks) != 1:
            raise ValueError("There must be exactly 1 joystick connected.",
                             "Found {len(joysticks)}")
        self.joy = joysticks[0]
        self.joy.init()
        pygame.init()
        self.t = None
        self.fps = fps

    def _get_human_action(self):
        for event in pygame.event.get():
            if event.type == pygame.JOYAXISMOTION:
                if event.axis == LEFT_SIDE_AXIS:
                    self.joystick_action[0, 1] = event.value
                elif event.axis == LEFT_UP_AXIS:
                    self.joystick_action[0, 0] = -1.0 * event.value
                if event.axis == RIGHT_SIDE_AXIS:
                    self.joystick_action[1, 1] = event.value
                elif event.axis == RIGHT_UP_AXIS:
                    self.joystick_action[1, 0] = -1.0 * event.value
            if event.type == pygame.JOYBUTTONDOWN:
                self.button[0] = event.button
            else:
                # button clear
                self.button[0] = -1
                #print(event.button)
        if abs(self.joystick_action[0, 0]) < 0.01:
            self.joystick_action[0, 0] = 0.0
        if abs(self.joystick_action[1, 0]) < 0.01:
            self.joystick_action[1, 0] = 0.0
        self.human_action[0][0] = self.joystick_action[0][0]
        self.human_action[0][1] = self.joystick_action[0][1]
        self.human_action[0][2] = self.joystick_action[1][0]
        self.human_action[0][3] = 0.
        self.human_action[0][4] = 0.
        self.human_action[0][5] = self.joystick_action[1][1]
        return self.human_action, self.button[0]

    def __call__(self, ob):
        """Act."""
        print("Actor call")
        action, button = self._get_human_action()
        print("action:", action)
        if self.t and (time.time() - self.t) < 1. / self.fps:
            st = 1. / self.fps - (time.time() - self.t)
            if st > 0.:
                time.sleep(st)
        self.t = time.time()
        print(type(action))
        return action

    def reset(self):
        self.joystick_action[:] = 0.
        self.human_action[:] = 0.

@gin.configurable
class PolicyActor(object):
    """policy actor"""

    def __init__(self, pi, device):
        self.pi = pi
        self.device = device

    def __call__(self, ob):
        """Act."""
        if isinstance(ob, np.ndarray):
            ob = torch.from_numpy(ob).to(self.device)
        return self.pi(ob).action.cpu().numpy()


@gin.configurable
class LunarLanderActor(object):
    """Lunar Lander actor."""

    def __init__(self, env, logdir, device):
        self.ckptr = Checkpointer(os.path.join(logdir, 'ckpts'))
        if not torch.cuda.is_available():
            device = 'cpu'
        self.pi = lunar_lander_policy_fn(env)
        self.pi.to(device)
        self.pi.load_state_dict(self.ckptr.load()['pi'])
        self.pi.eval()
        self.device = device

    def __call__(self, ob):
        """Act."""
        with torch.no_grad():
            if isinstance(ob, np.ndarray):
                ob = torch.from_numpy(ob).to(self.device)
            return self.pi(ob).action.cpu().numpy()


@gin.configurable
class DroneReacherActor(object):
    """DroneReacher actor."""

    def __init__(self, env, logdir, device):
        self.ckptr = Checkpointer(os.path.join(logdir, 'ckpts'))
        if not torch.cuda.is_available():
            device = 'cpu'
        self.pi = drone_ppo_policy_fn(env)
        self.pi.to(device)
        self.pi.load_state_dict(self.ckptr.load()['pi'])
        self.pi.eval()
        self.device = device

    def __call__(self, ob):
        """Act."""
        with torch.no_grad():
            if isinstance(ob, np.ndarray):
                ob = torch.from_numpy(ob).to(self.device)
            return self.pi(ob).action.cpu().numpy()


@gin.configurable
class LaggyActor(object):
    """Laggy actor"""

    def __init__(self, env, actor_cls, repeat_prob):
        self.actor = actor_cls(env)
        self.repeat_prob = repeat_prob
        self.action = None

    def __call__(self, ob):
        """Act."""
        if self.action is None or np.random.rand() > self.repeat_prob:
            self.action = self.actor(ob)
        return self.action


@gin.configurable
class NoisyActor(object):
    """Noisy actor"""

    def __init__(self, env, actor_cls, eps):
        self.actor = actor_cls(env)
        self.eps = eps

    def __call__(self, ob):
        """Act."""
        action = self.actor(ob)
        if np.random.rand() < self.eps:
            action = np.random.uniform(-1, 1, action.shape).astype(action.dtype)
        return action


@gin.configurable
class BCActor(object):
    """Actor trained with Behavioral cloning"""

    def __init__(self, env, logdir, device):
        self.ckptr = Checkpointer(os.path.join(logdir, 'ckpts'))
        if not torch.cuda.is_available():
            device = 'cpu'
        self.device = device
        self.net = BCNet()
        self.net.to(device)
        self.net.load_state_dict(self.ckptr.load()['model'])

    def __call__(self, ob):
        """Act."""
        with torch.no_grad():
            dist = self.net(torch.from_numpy(ob).to(self.device))
            ac = dist.sample().cpu().numpy()
            return np.clip(ac, -1., 1.)


@gin.configurable
class BCMultiActor(object):
    """Use multiple actors trained with Behavioral cloning"""

    def __init__(self, env, logdir, device, switch_prob=0.001):
        dirs = [x for x in os.listdir(logdir) if os.path.isdir(
                                            os.path.join(logdir, x, 'ckpts'))]

        self.ckptrs = [Checkpointer(os.path.join(logdir, x, 'ckpts'))
                       for x in dirs]
        if not torch.cuda.is_available():
            device = 'cpu'
        self.device = device
        self.nets = [BCNet() for _ in dirs]
        for net, ckptr in zip(self.nets, self.ckptrs):
            net.to(device)
            net.load_state_dict(ckptr.load()['model'])
        self.current_actor = np.random.choice(self.nets)
        self.switch_prob = switch_prob

    def __call__(self, ob):
        """Act."""
        if np.random.rand() < self.switch_prob:
            self.current_actor = np.random.choice(self.nets)
        with torch.no_grad():
            if isinstance(ob, np.ndarray):
                ob = torch.from_numpy(ob)
            dist = self.current_actor(ob.to(self.device))
            ac = dist.sample().cpu().numpy()
            return np.clip(ac, -1., 1.)
    

if __name__ == '__main__':
    import gym
    import residual_shared_autonomy.envs
    from dl.rl import ensure_vec_env
    import time

    env = gym.make("LunarLanderRandomContinuous-v2")
    env = ensure_vec_env(env)

    # actor = OrnsteinUhlenbeckActor(env, 0.5)
    actor = RandomActor(env)

    for _ in range(10):
        ob = env.reset()
        env.render()
        done = False
        reward = 0.0
        time.sleep(1.)

        while not done:
            ob, r, done, _ = env.step(actor(ob))
            env.render()
            reward += r
        print(reward)
