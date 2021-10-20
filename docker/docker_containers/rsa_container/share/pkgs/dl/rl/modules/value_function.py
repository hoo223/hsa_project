"""Value function module."""
import torch.nn as nn
import gin
from dl.rl.modules.base import ValueFunctionBase
from collections import namedtuple


@gin.configurable(allowlist=['base'])
class ValueFunction(nn.Module):
    """Value function module."""

    def __init__(self, base):
        """Init."""
        super().__init__()
        self.base = base
        assert isinstance(self.base, ValueFunctionBase)
        self.outputs = namedtuple('Outputs', ['value'])

    def forward(self, ob):
        """Forward."""
        value = self.base(ob).squeeze(-1)
        return self.outputs(value=value)


if __name__ == '__main__':
    import gym
    import torch
    import unittest
    import numpy as np

    class TestVF(unittest.TestCase):
        """Test."""

        def test(self):
            """Test."""
            class Base(ValueFunctionBase):
                def forward(self, ob):
                    return torch.from_numpy(np.zeros((ob.shape[0], 1)))

            env = gym.make('CartPole-v1')
            vf = ValueFunction(Base(env.observation_space, env.action_space))
            ob = env.reset()

            assert np.allclose(vf(ob[None]).value, 0)

    unittest.main()
