#!/usr/bin/python
# -*- coding: utf8 -*- 
"""Joystick Agent."""
import pygame
import numpy as np
import time
import rospy
from std_msgs.msg import Float64MultiArray

#####################################
# Change these to match your joystick
RIGHT_UP_AXIS = 4
RIGHT_SIDE_AXIS = 3
LEFT_UP_AXIS = 1
LEFT_SIDE_AXIS = 0
#####################################

class UR10JoystickActor(object):
    """Joystick Controller for Lunar Lander."""

    def __init__(self, env, fps=50):
        """Init."""
        if env.num_envs > 1:
            raise ValueError("Only one env can be controlled with the joystick.")
        self.env = env
        self.human_agent_action = np.array([[0., 0.], [0., 0.]], dtype=np.float32)  # noop
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
                    self.human_agent_action[0, 1] = event.value
                elif event.axis == LEFT_UP_AXIS:
                    self.human_agent_action[0, 0] = -1.0 * event.value
                if event.axis == RIGHT_SIDE_AXIS:
                    self.human_agent_action[1, 1] = event.value
                elif event.axis == RIGHT_UP_AXIS:
                    self.human_agent_action[1, 0] = -1.0 * event.value
            if event.type == pygame.JOYBUTTONDOWN:
                self.button[0] = event.button
            else:
                # button clear
                self.button[0] = -1
                #print(event.button)
        if abs(self.human_agent_action[0, 0]) < 0.01:
            self.human_agent_action[0, 0] = 0.0
        if abs(self.human_agent_action[1, 0]) < 0.01:
            self.human_agent_action[1, 0] = 0.0
        result = np.array([self.human_agent_action[0][0], self.human_agent_action[0][1], self.human_agent_action[1][0], 0., 0., self.human_agent_action[1][1]], dtype=np.float32)
        return result, self.button[0]

    def __call__(self, ob):
        """Act."""
        print("Actor call")
        action, button = self._get_human_action()
        if self.t and (time.time() - self.t) < 1. / self.fps:
            st = 1. / self.fps - (time.time() - self.t)
            if st > 0.:
                time.sleep(st)
        self.t = time.time()
        
        return action

    def reset(self):
        self.human_agent_action[:] = 0.

if __name__ == '__main__':
    import gym
    from dl.rl import ensure_vec_env
    
    env = gym.make("ur10_env:ur10-v0")
    env = ensure_vec_env(env)
    actor = UR10JoystickActor(env)
    
    for _ in range(10):
        ob = env.reset()
        done = False
        reward = 0.0

        while not done:
            action = actor(ob)
            print(action)
            ob, r, done, _ = env.step(action)
            reward += r
        print(reward)
    
    # fps = 1100
    # actor = UR10JoystickActor(fps=fps)
    # pub = rospy.Publisher('env_command', Float64MultiArray, queue_size=10)
    # rospy.init_node('joystick', anonymous=True)
    # rate = rospy.Rate(fps)
    # while not rospy.is_shutdown():
    #     # get input from joystick
    #     input, button = actor()
    #     command = Float64MultiArray()
    #     command.data.append(input[0][0]) # x
    #     command.data.append(input[0][1]) # y
    #     command.data.append(input[1][0]) # z
    #     command.data.append(0) # roll
    #     command.data.append(0) # pitch
    #     command.data.append(input[1][1]) # yaw
    #     command.data.append(button) # button
    #     pub.publish(command)

    #     rate.sleep()