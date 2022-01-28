"""Implements a torch module for stochastic policies."""
import torch.nn as nn
import gin
from dl.rl.modules.base import PolicyBase, ActorCriticBase
from collections import namedtuple


@gin.configurable(allowlist=['base'])
class Policy(nn.Module):
    """Policy module."""

    def __init__(self, base):
        """init."""
        super().__init__()
        self.base = base
        assert isinstance(self.base, (PolicyBase, ActorCriticBase)) # argument로 들어온 base가 둘 중 하나에 해당하는지 체크
        self.outputs = namedtuple('Outputs',
                                  ['action', 'value', 'dist', 'state_out']) # 이름으로 접근 가능한 tuple

    def _run_policy_base(self, ob, state_in, mask):
        outs = self.base(ob) if state_in is None else self.base(ob, state_in,
                                                                mask)
        if isinstance(outs, tuple):
            dist, state_out = outs
        else:
            dist, state_out = outs, None
        return dist, None, state_out

    def _run_actor_critic_base(self, ob, state_in, mask):
        outs = self.base(ob) if state_in is None else self.base(ob, state_in,
                                                                mask)
        if len(outs) == 2:
            action, value = outs
            return action, value.squeeze(-1), None
        else:
            action, value, state_out = outs
            return action, value.squeeze(-1), state_out

    def forward(self, ob, state_in=None, mask=None, deterministic=False,
                reparameterization_trick=False):
        """Compute policy outputs.

        Returns:
            out (namedtuple):
                out.action: The sampled action, or the mode if
                            deterministic=True
                out.value:  The value of the current observation
                out.dist:   The action distribution - torch.distributions.normal.Normal https://pytorch.org/docs/stable/distributions.html#:~:text=Normal-,CLASS,torch.distributions.normal.Normal,-(loc%2C%20scale%2C%20validate_args 
                out.state_out:  The temporal state of base
                                (See above for details)

        """
        if isinstance(self.base, PolicyBase):
            dist, value, state_out = self._run_policy_base(ob, state_in, mask)
        else:
            dist, value, state_out = self._run_actor_critic_base(ob, state_in,
                                                                 mask)

        # sample action
        if deterministic:
            action = dist.mode() # 최빈값 = 평균값 (for Gaussian) dl/modules/distributions.py - class Normal
        elif reparameterization_trick:
            try:
                action = dist.rsample()
            except Exception:
                assert False, f"{dist.__class__.__name__} distribution"
                " does not have a reparameterization trick."
        else: # stochastic action
            action = dist.sample() 
        return self.outputs(value=value, action=action, dist=dist,
                            state_out=state_out)


if __name__ == '__main__':
    import unittest
    import torch
    import gym
    import numpy as np
    from dl.modules import CatDist

    class TestPolicy(unittest.TestCase):
        """Test Policy module."""

        def test_policy_base(self):
            """Test Policy base."""
            class Base(PolicyBase):
                def forward(self, ob):
                    logits = np.random.rand(ob.shape[0], 2)
                    return CatDist(torch.from_numpy(logits))

            env = gym.make('CartPole-v1')
            pi = Policy(Base(env.observation_space, env.action_space))
            ob = env.reset()

            outs = pi(ob[None])
            assert outs.value is None
            assert outs.state_out is None

            outs = pi(ob[None], deterministic=True)
            assert outs.value is None
            assert outs.state_out is None
            assert torch.allclose(outs.action, outs.dist.mode())

            try:
                outs = pi(ob[None], reparameterization_trick=True)
                assert False
            except Exception:
                pass

        def test_recurrent_policy_base(self):
            """Test recurrent Policy base."""
            class Base(PolicyBase):
                def forward(self, ob, state_in=None, mask=None):
                    logits = np.random.rand(ob.shape[0], 2)
                    if state_in is None:
                        state_in = torch.from_numpy(np.zeros(10))
                    return CatDist(torch.from_numpy(logits)), state_in + 1

            env = gym.make('CartPole-v1')
            pi = Policy(Base(env.observation_space, env.action_space))
            ob = env.reset()

            outs = pi(ob[None])
            assert outs.value is None
            assert np.allclose(outs.state_out, 1)

            outs = pi(ob[None], state_in=outs.state_out)
            assert outs.value is None
            assert np.allclose(outs.state_out, 2)

        def test_actor_critic_base(self):
            """Test actor critic base."""
            class Base(ActorCriticBase):
                def forward(self, ob):
                    logits = np.random.rand(ob.shape[0], 2)
                    v = np.random.rand(ob.shape[0], 1)
                    return CatDist(torch.from_numpy(logits)), v

            env = gym.make('CartPole-v1')
            pi = Policy(Base(env.observation_space, env.action_space))
            ob = env.reset()

            outs = pi(ob[None])
            assert outs.value is not None
            assert outs.state_out is None

            outs = pi(ob[None], deterministic=True)
            assert outs.value is not None
            assert outs.state_out is None
            assert torch.allclose(outs.action, outs.dist.mode())

            try:
                outs = pi(ob[None], reparameterization_trick=True)
                assert False
            except Exception:
                pass

        def test_recurrent_actor_critic_base(self):
            """Test recurrent actor critic base."""
            class Base(ActorCriticBase):
                def forward(self, ob, state_in=None, mask=None):
                    logits = np.random.rand(ob.shape[0], 2)
                    if state_in is None:
                        state_in = torch.from_numpy(np.zeros(10))
                    v = np.random.rand(ob.shape[0], 1)
                    return CatDist(torch.from_numpy(logits)), v, state_in + 1

            env = gym.make('CartPole-v1')
            pi = Policy(Base(env.observation_space, env.action_space))
            ob = env.reset()

            outs = pi(ob[None])
            assert outs.value is not None
            assert np.allclose(outs.state_out, 1)

            outs = pi(ob[None], state_in=outs.state_out)
            assert outs.value is not None
            assert np.allclose(outs.state_out, 2)

    unittest.main()
