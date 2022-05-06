"""Residual Policy Learning with PPO.

https://arxiv.org/abs/1812.06298
"""
from dl.rl.envs import VecEpisodeLogger
from dl.rl.data_collection import RolloutDataManager
from dl.rl.modules import Policy
from dl.rl.util import rl_evaluate, rl_record, misc
from dl import logger, Algorithm, Checkpointer
from residual_shared_autonomy import ResidualWrapper
import gin
import numpy as np
import os
import torch
import torch.nn as nn
import torch.nn.functional as F
import time
from tqdm import tqdm


class ResidualPPOActor(object):
    """Actor."""

    def __init__(self, pi, policy_training_start):
        """Init."""
        self.pi = pi
        self.policy_training_start = policy_training_start
        self.t = 0

    def __call__(self, ob, state_in=None, mask=None):
        """Produce decision from model."""
        #print("ResidualPPOActor")
        if self.t < self.policy_training_start: # before training -> deterministic action
            outs = self.pi(ob, state_in, mask, deterministic=True)
            if not torch.allclose(outs.action, torch.zeros_like(outs.action)):
                raise ValueError("Pi should be initialized to output zero "
                                 "actions so that an acurate value function "
                                 "can be learned for the base policy.")
        else: # after starting training -> stochastic action
            outs = self.pi(ob, state_in, mask) 
        #print(outs)
        # calculate residual norm
        residual_norm = torch.mean(torch.sum(torch.abs(outs.action), dim=1))
        logger.add_scalar('actor/l1_residual_norm', residual_norm, self.t,
                          time.time())
        
        # increase step 
        self.t += outs.action.shape[0]
        data = {'action': outs.action,
                'value': outs.value,
                'logp': outs.dist.log_prob(outs.action)}
        if outs.state_out:
            data['state'] = outs.state_out
        return data

    def state_dict(self):
        """State dict."""
        return {'t': self.t}

    def load_state_dict(self, state_dict):
        """Load state dict."""
        self.t = state_dict['t']


@gin.configurable(denylist=['logdir']) # dl/trainer.py/train -> train.algorithm
class ConstrainedResidualPPO(Algorithm):
    """Constrained Residual PPO algorithm."""

    def __init__(self,
                 logdir,
                 env_fn,
                 policy_fn,
                 nenv=1,
                 optimizer=torch.optim.Adam,
                 lambda_lr=1e-4,
                 lambda_init=100.,
                 lr_decay_rate=1./3.16227766017,
                 lr_decay_freq=20000000,
                 l2_reg=True,
                 reward_threshold=-0.05,
                 rollout_length=128,
                 batch_size=32,
                 gamma=0.99,
                 lambda_=0.95,
                 norm_advantages=False,
                 epochs_per_rollout=10,
                 max_grad_norm=None,
                 ent_coef=0.01,
                 vf_coef=0.5,
                 clip_param=0.2,
                 base_actor_cls=None,
                 policy_training_start=10000,
                 lambda_training_start=100000,
                 eval_num_episodes=1,
                 record_num_episodes=1,
                 wrapper_fn=None,  # additional wrappers for the env
                 gpu=True):
        """Init."""
        self.logdir = logdir
        self.ckptr = Checkpointer(os.path.join(logdir, 'ckpts'))
        self.env_fn = env_fn
        self.nenv = nenv
        self.eval_num_episodes = eval_num_episodes
        self.record_num_episodes = record_num_episodes
        self.epochs_per_rollout = epochs_per_rollout
        self.max_grad_norm = max_grad_norm
        self.ent_coef = ent_coef
        self.vf_coef = vf_coef
        self.clip_param = clip_param
        self.base_actor_cls = base_actor_cls
        self.policy_training_start = policy_training_start
        self.lambda_training_start = lambda_training_start
        self.lambda_lr = lambda_lr
        self.lr_decay_rate = lr_decay_rate
        self.lr_decay_freq = lr_decay_freq
        self.l2_reg = l2_reg
        self.reward_threshold = reward_threshold
        self.device = torch.device('cuda:0' if gpu and torch.cuda.is_available()
                                   else 'cpu')
        print("Device: ", self.device)
        
        # vectorized env
        self.env = VecEpisodeLogger(env_fn(nenv=nenv)) # env_fn = @make_env (from gin file)
                                                       # make_env (from dl/envs/env_fns.py)
                                                       # .env_id -> gin file
                                                       # VecEpisodeLogger (from dl/envs/logging_wrappers.py)
        
        # residual env
        self.env = ResidualWrapper(self.env, self.base_actor_cls(self.env)) # from gin file
                                                                            # base_actor_cls = @RandomActor (from residual_shared_autonomy/base_actors.py)
                                                                            # = base policy
                                                                            # ResidualWrapper (from residual_shared_autonomy/residual_wrapper.py)
        print("Residual Wrapped")
        
        if wrapper_fn:
            self.env = wrapper_fn(self.env) # from gin file

        # policy network
        self.pi = policy_fn(self.env).to(self.device) # from gin file
                                                      # policy_fn = @ppo_policy_fn (from ppo/actor.py)
        
        # optimizer for main loss
        self.opt = optimizer(self.pi.parameters()) # https://easy-going-programming.tistory.com/11
        
        # policy network learning rate
        self.pi_lr = self.opt.param_groups[0]['lr'] 
        
        # lambda parameter
        if lambda_init < 10: 
            lambda_init = np.log(np.exp(lambda_init) - 1) # 0 또는 음수일 경우 에러남
        self.log_lambda_ = nn.Parameter(
                            torch.Tensor([lambda_init]).to(self.device))
        # -- result -- #
        # Parameter containing: tensor([20.], device='cuda:0', requires_grad=True)
        
        # optimizer for lambda loss
        self.opt_l = optimizer([self.log_lambda_], lr=lambda_lr)
        
        # residual actor
        self._actor = ResidualPPOActor(self.pi, policy_training_start)
        
        # create a RolloutDataManager (from dl/rl/data_collection/rollout_data_collection.py)
        self.data_manager = RolloutDataManager(
            self.env, # shared autonomy framework 포함
            self._actor, # residual action 
            self.device,
            rollout_length=rollout_length,
            batch_size=batch_size,
            gamma=gamma,
            lambda_=lambda_,
            norm_advantages=norm_advantages)

        # MSE & humber loss
        self.mse = nn.MSELoss(reduction='none')
        self.huber = nn.SmoothL1Loss()

        # initialize the step count variable
        self.t = 0

    def loss(self, batch):
        """Compute loss."""
        if self.data_manager.recurrent:
            outs = self.pi(batch['obs'], batch['state'], batch['mask'])
        else:
            outs = self.pi(batch['obs'])
        loss = {}

        # compute policy loss
        if self.t < self.policy_training_start:
            pi_loss = torch.Tensor([0.0]).to(self.device)
        else:
            logp = outs.dist.log_prob(batch['action'])
            assert logp.shape == batch['logp'].shape
            ratio = torch.exp(logp - batch['logp'])
            assert ratio.shape == batch['atarg'].shape
            ploss1 = ratio * batch['atarg']
            ploss2 = torch.clamp(ratio, 1.0-self.clip_param,
                                 1.0+self.clip_param) * batch['atarg']
            pi_loss = -torch.min(ploss1, ploss2).mean()
        loss['pi'] = pi_loss

        # compute value loss
        vloss1 = 0.5 * self.mse(outs.value, batch['vtarg'])
        vpred_clipped = batch['vpred'] + (
            outs.value - batch['vpred']).clamp(-self.clip_param,
                                               self.clip_param)
        vloss2 = 0.5 * self.mse(vpred_clipped, batch['vtarg'])
        vf_loss = torch.max(vloss1, vloss2).mean()
        loss['value'] = vf_loss

        # compute entropy loss
        if self.t < self.policy_training_start:
            ent_loss = torch.Tensor([0.0]).to(self.device)
        else:
            ent_loss = outs.dist.entropy().mean()
        loss['entropy'] = ent_loss

        # compute residual regularizer
        if self.t < self.policy_training_start:
            reg_loss = torch.Tensor([0.0]).to(self.device)
        else:
            if self.l2_reg:
                reg_loss = outs.dist.rsample().pow(2).sum(dim=-1).mean()
            else:  # huber loss
                ac_norm = torch.norm(outs.dist.rsample(), dim=-1)
                reg_loss = self.huber(ac_norm, torch.zeros_like(ac_norm))
        loss['reg'] = reg_loss

        ###############################
        # Constrained loss added here.
        ###############################

        # soft plus on lambda to constrain it to be positive.
        lambda_ = F.softplus(self.log_lambda_)
        logger.add_scalar('alg/lambda', lambda_, self.t, time.time())
        logger.add_scalar('alg/lambda_', self.log_lambda_, self.t, time.time())
        if self.t < max(self.policy_training_start, self.lambda_training_start):
            loss['lambda'] = torch.Tensor([0.0]).to(self.device)
        else:
            neps = (1.0 - batch['mask']).sum()
            loss['lambda'] = (lambda_ * (batch['reward'].sum() - self.reward_threshold * neps) / batch['reward'].size()[0])
        if self.t >= self.policy_training_start:
            loss['pi'] = (reg_loss + lambda_ * loss['pi']) / (1. + lambda_)
        loss['total'] = (loss['pi'] + self.vf_coef * vf_loss
                         - self.ent_coef * ent_loss)
        return loss

    def step(self):
        """Compute rollout, loss, and update model."""
        self.pi.train() # eval flag -> False
        # adjust learning rate
        lr_frac = self.lr_decay_rate ** (self.t // self.lr_decay_freq)
        for g in self.opt.param_groups:
            g['lr'] = self.pi_lr * lr_frac
        for g in self.opt_l.param_groups:
            g['lr'] = self.lambda_lr * lr_frac

        # compute entire rollout and advantage targets.
        print("rollout")
        self.data_manager.rollout() # dl/rl/data_collection -> rollout_step 함수에서 실질적으로 policy network로부터 residual action을 끄집어냄

        # increse step 
        print("increase step")
        self.t += self.data_manager.rollout_length * self.nenv
        
        # compute losses
        print("compute loss")
        losses = {} # dict
        for _ in tqdm(range(self.epochs_per_rollout)):
            for batch in self.data_manager.sampler():
                loss = self.loss(batch)
                if losses == {}:
                    losses = {k: [] for k in loss}
                for k, v in loss.items(): # key, value
                    losses[k].append(v.detach().cpu().numpy()) # .detach(): copy tensor https://subinium.github.io/pytorch-Tensor-Variable/#:~:text=%EB%B0%A9%EB%B2%95%20%EC%A4%91%20%ED%95%98%EB%82%98%EC%9E%85%EB%8B%88%EB%8B%A4.-,detach,-()%20%3A%20%EA%B8%B0%EC%A1%B4%20Tensor%EC%97%90%EC%84%9C
                if self.t >= max(self.policy_training_start,
                                 self.lambda_training_start):
                    self.opt_l.zero_grad() # gradient 초기화 https://algopoolja.tistory.com/55
                    loss['lambda'].backward(retain_graph=True) # backpropagation https://tutorials.pytorch.kr/beginner/blitz/autograd_tutorial.html#:~:text=%ED%85%90%EC%84%9C(error%20tensor)%EC%97%90-,.backward(),-%EB%A5%BC%20%ED%98%B8%EC%B6%9C%ED%95%98%EB%A9%B4%20%EC%97%AD%EC%A0%84%ED%8C%8C%EA%B0%80 
                    self.opt_l.step() # https://pytorch.org/docs/stable/optim.html#:~:text=Taking%20an%20optimization%20step
                self.opt.zero_grad()
                loss['total'].backward()
                if self.max_grad_norm: # from gin file
                    nn.utils.clip_grad_norm_(self.pi.parameters(),
                                             self.max_grad_norm)
                self.opt.step()
        print("weight updated")
        
        # save loss to logger
        print("save to logger")
        for k, v in losses.items():
            logger.add_scalar(f'loss/{k}', np.mean(v), self.t, time.time())
        logger.add_scalar('alg/lr_pi', self.opt.param_groups[0]['lr'], self.t,
                          time.time())
        logger.add_scalar('alg/lr_lambda', self.opt_l.param_groups[0]['lr'],
                          self.t, time.time())
        
        return self.t # step 수 반환

    def evaluate(self):
        """Evaluate model."""
        print("----------------------- eval -----------------------")
        self.pi.eval() # eval flag -> True
        misc.set_env_to_eval_mode(self.env)

        # Eval policy
        os.makedirs(os.path.join(self.logdir, 'eval'), exist_ok=True)
        outfile = os.path.join(self.logdir, 'eval',
                               self.ckptr.format.format(self.t) + '.json')
        stats = rl_evaluate(self.env, self.pi, self.eval_num_episodes,
                            outfile, self.device) # dl/rl/util/eval.py
        logger.add_scalar('eval/mean_episode_reward', stats['mean_reward'],
                          self.t, time.time())
        logger.add_scalar('eval/mean_episode_length', stats['mean_length'],
                          self.t, time.time())
        print("----------------------- eval end -----------------------")
        # Record policy
        # os.makedirs(os.path.join(self.logdir, 'video'), exist_ok=True)
        # outfile = os.path.join(self.logdir, 'video',
        #                        self.ckptr.format.format(self.t) + '.mp4')
        # rl_record(self.env, self.pi, self.record_num_episodes, outfile,
        #           self.device)

        self.pi.train()
        misc.set_env_to_train_mode(self.env)

    def save(self):
        """State dict."""
        state_dict = {
            'pi': self.pi.state_dict(),
            'opt': self.opt.state_dict(),
            'lambda_': self.log_lambda_,
            'opt_l': self.opt_l.state_dict(),
            'env': misc.env_state_dict(self.env),
            '_actor': self._actor.state_dict(),
            't': self.t
        }
        self.ckptr.save(state_dict, self.t)

    def load(self, t=None):
        """Load state dict."""
        state_dict = self.ckptr.load(t)
        if state_dict is None:
            self.t = 0
            return self.t
        self.pi.load_state_dict(state_dict['pi'])
        self.opt.load_state_dict(state_dict['opt'])
        self.opt_l.load_state_dict(state_dict['opt_l'])
        self.log_lambda_.data.copy_(state_dict['lambda_'])
        misc.env_load_state_dict(self.env, state_dict['env'])
        self._actor.load_state_dict(state_dict['_actor'])
        self.t = state_dict['t']
        return self.t

    def close(self):
        """Close environment."""
        try:
            self.env.close()
        except Exception:
            pass


if __name__ == '__main__':
    import unittest
    import shutil
    from dl.rl.modules import ActorCriticBase
    from dl.rl import make_env
    from dl import train
    import residual_shared_autonomy.envs
    from dl.modules import DiagGaussian
    import torch.nn.functional as F
    from functools import partial

    class FeedForwardActorCriticBase(ActorCriticBase):
        """Policy and Value networks."""

        def build(self):
            """Build."""
            inshape = (self.observation_space.spaces[0].shape[0]
                       + self.observation_space.spaces[1].shape[0])
            self.fc1 = nn.Linear(inshape, 32)
            self.fc2 = nn.Linear(32, 32)
            self.fc3 = nn.Linear(32, 32)
            self.dist = DiagGaussian(32, self.action_space.shape[0])
            for p in self.dist.fc_mean.parameters():
                nn.init.constant_(p, 0.)

            self.vf_fc1 = nn.Linear(inshape, 32)
            self.vf_fc2 = nn.Linear(32, 32)
            self.vf_fc3 = nn.Linear(32, 32)
            self.vf_out = nn.Linear(32, 1)

        def forward(self, x):
            """Forward."""
            ob = torch.cat(x, axis=1)
            net = ob
            net = F.relu(self.fc1(net))
            net = F.relu(self.fc2(net))
            net = F.relu(self.fc3(net))
            pi = self.dist(net)

            net = ob
            net = F.relu(self.vf_fc1(net))
            net = F.relu(self.vf_fc2(net))
            net = F.relu(self.vf_fc3(net))
            vf = self.vf_out(net)

            return pi, vf

    class RandomActor(object):
        """Output random actions."""

        def __init__(self, env):
            """Init."""
            self.action_space = env.action_space

        def __call__(self, ob):
            """Act."""
            batch_size = ob.shape[0]
            return np.asarray([self.action_space.sample()
                               for _ in range(batch_size)])

    class TestResidualPPO(unittest.TestCase):
        """Test case."""

        def test_feed_forward_ppo(self):
            """Test feed forward ppo."""
            def env_fn(nenv):
                return make_env(env_id="LunarLanderRandomConstrained-v2",
                                nenv=nenv)

            def policy_fn(env):
                return Policy(FeedForwardActorCriticBase(env.observation_space,
                                                         env.action_space))

            ppo = partial(ConstrainedResidualPPO,
                          env_fn=env_fn,
                          nenv=32,
                          policy_fn=policy_fn,
                          base_actor_cls=RandomActor,
                          policy_training_start=500)
            train('test', ppo, maxt=1000, eval=True, eval_period=1000)
            alg = ppo('test')
            alg.load()
            shutil.rmtree('test')

    unittest.main()
