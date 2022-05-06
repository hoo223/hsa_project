"""Code for storing and iterating over rollout data."""
from dl.rl.data_collection import RolloutStorage
from dl.rl.util import ensure_vec_env
from dl import nest
import torch
from tqdm import tqdm


class RolloutDataManager(object):
    """Collects data from environments and stores it in a RolloutStorage.

    The resposibilities of this class are:
        - Handle storage of rollout data
        - Handle computing rollouts
        - Handle batching and iterating over rollout data

    act_fn:
        A callable which takes in the observation, recurrent state and
        mask and returns:
            - a dictionary with the data to store in the rollout. 'action'
              and 'value' must be in the dict. Recurrent states must
              be nested under the 'state' key. All values except
              data['state'] must be pytorch Tensors.
    """

    def __init__(self,
                 env,
                 act_fn,
                 device,
                 rollout_length=128,
                 batch_size=32,
                 gamma=0.99,
                 lambda_=0.95,
                 norm_advantages=False):
        """Init."""
        self.env = ensure_vec_env(env)
        self.nenv = self.env.num_envs
        self.act = act_fn # ResidualPPOActor
        self.device = device
        self.rollout_length = rollout_length
        self.batch_size = batch_size
        self.gamma = gamma
        self.lambda_ = lambda_
        self.norm_advantages = norm_advantages

        self.storage = None

    def init_rollout_storage(self):
        """Initialize rollout storage."""
        print("Initialize rollout storage")
        # define a function 
        def _to_torch(o):
            return torch.from_numpy(o).to(self.device) # numpy -> tensor, move the tensor to gpu
        
        # environment reset
        state = self.env.reset()
        print("env reset")
        
        # 각 state value에 _to_torch 함수를 mapping
        self._ob = nest.map_structure(_to_torch, state) # nest.map_structure (from dl/util/nest.py)
  
        # act 함수 테스트 - action, value 값을 반환하는지
        data = self.act(self._ob)
        if 'action' not in data:
            raise ValueError('the key "action" must be in the dict returned '
                             'act_fn')
        if 'value' not in data:
            raise ValueError('the key "value" must be in the dict returned '
                             'act_fn')
        
        # create self.storage - rollout data 저장소
        state = None
        if 'state' in data:
            state = data['state']

        if state is None: # data 안에 state 값이 없으면 -> no recurrent
            print("no recurrent")
            self.storage = RolloutStorage(self.rollout_length, 
                                          self.nenv,
                                          device=self.device,
                                          recurrent=False)
            # from dl/rl/data_collection/rollout.py
            # This class stores data from rollouts with an environment.
            # Once all rollout data has been stored, it can be batched and iterated over 
            # by calling the 'sampler(batch_size)' method.
            
            self.init_state = None
            self.recurrent = False
        else: # data 안에 state 값이 있으면 -> recurrent
            print("recurrent")
            self.recurrent = True
            self.storage = RolloutStorage(self.rollout_length,
                                          self.nenv,
                                          device=self.device,
                                          recurrent=True)

            def _init_state(s):
                return torch.zeros(size=s.shape, device=self.device,
                                   dtype=s.dtype)

            self.init_state = nest.map_structure(_init_state, state)

        self._ob = nest.map_structure(_to_torch, self.env.reset())
        # 환경 개수만큼 element를 갖는 mask tensor 생성
        self._mask = torch.Tensor( 
            [0. for _ in range(self.nenv)]).to(self.device)
        self._state = self.init_state


    def rollout_step(self):
        """Compute one environment step."""
        print("rollout_step")
        if not self.storage: # storage가 비어있으면 (즉, rollout data가 없을 경우) init_rollout_storage 실행하여 생성
            print("no storage - make new storage")
            self.init_rollout_storage()
            
        # get action
        with torch.no_grad(): # gradient 연산을 옵션을 끌 때 사용 https://easy-going-programming.tistory.com/14 
            # 현재 observation을 이용해 policy로부터 residual action 생성
            if self.recurrent:
                outs = self.act(self._ob, state_in=self._state, mask=self._mask)
            else:
                outs = self.act(self._ob, state_in=None, mask=None)
        # print("residual:", outs['action'])
        
        # step 진행
        ob, r, done, _ = self.env.step(outs['action'].cpu().numpy())
        
        # 새로 만들어진 data를 storage에 저장
        data = {}
        data['obs'] = self._ob
        data['action'] = outs['action']
        data['reward'] = torch.from_numpy(r).float()
        data['mask'] = self._mask
        data['vpred'] = outs['value']
        for key in outs:
            if key != 'action':
                data[key] = outs[key]
        self.storage.insert(data) 

        # Preparation for next step
        def _to_torch(o):
            return torch.from_numpy(o).to(self.device)

        self._ob = nest.map_structure(_to_torch, ob)
        # 각 환경에 대한 mask 생성 -> episode가 종료되었으면 (done == True) 0.0, 종료되지 않았으면 (done == False) 1.0
        self._mask = torch.Tensor(
                [0.0 if done_ else 1.0 for done_ in done]).to(self.device)
        if self.recurrent:
            self._state = outs['state']

    def rollout(self):
        """Compute entire rollout and advantage targets."""
        # rollout length = 1024만큼 rollout step 진행하여 데이터 생성 
        print("generate rollout")
        for i in tqdm(range(self.rollout_length)):
            self.rollout_step()
            
        # compute advantage target  from rollout data
        print("compute advantage target")
        with torch.no_grad(): # gradient 연산을 옵션을 끌 때 사용 https://easy-going-programming.tistory.com/14 
            if self.recurrent:
                outs = self.act(self._ob, state_in=self._state, mask=self._mask)
            else:
                outs = self.act(self._ob, state_in=None, mask=None)
            self.storage.compute_targets(outs['value'],
                                         self._mask,
                                         self.gamma,
                                         use_gae=True,
                                         lambda_=self.lambda_,
                                         norm_advantages=self.norm_advantages)
            # output -> self.data['atarg']

    def sampler(self):
        """Create sampler to iterate over rollout data."""
        return self.storage.sampler(self.batch_size)

    def act(self, ob, state_in=None, mask=None):
        """Run the model to produce an action.

        Overwrite this method in subclasses.

        Returns:
            out: namedtuple output of Policy or QFunction
            data: dict containing addition data to store in RolloutStorage.
                  The keys should match 'other_keys' given to
                  init_rollout_storage().

        """
        raise NotImplementedError


if __name__ == '__main__':
    import unittest
    from dl.rl.modules import Policy, ActorCriticBase
    from dl.rl.envs import make_env
    from dl.modules import FeedForwardNet, Categorical, DiagGaussian
    from dl.modules import MaskedLSTM, TimeAndBatchUnflattener
    from gym.spaces import Tuple
    from baselines.common.vec_env import VecEnvWrapper

    class FeedForwardBase(ActorCriticBase):
        """Test feed forward network."""

        def build(self):
            """Build network."""
            inshape = self.observation_space.shape[0]
            self.net = FeedForwardNet(inshape, [32, 32], activate_last=True)
            if hasattr(self.action_space, 'n'):
                self.dist = Categorical(32, self.action_space.n)
            else:
                self.dist = DiagGaussian(32, self.action_space.shape[0])
            self.vf = torch.nn.Linear(32, 1)

        def forward(self, ob):
            """Forward."""
            if isinstance(ob, (list, tuple)):
                ob = ob[0]
            x = self.net(ob.float())
            return self.dist(x), self.vf(x)

    class RNNBase(ActorCriticBase):
        """Test recurrent network."""

        def build(self):
            """Build network."""
            inshape = self.observation_space.shape[0]
            self.net = FeedForwardNet(inshape, [32, 32], activate_last=True)
            if hasattr(self.action_space, 'n'):
                self.dist = Categorical(32, self.action_space.n)
            else:
                self.dist = DiagGaussian(32, self.action_space.shape[0])
            self.lstm = MaskedLSTM(32, 32, 1)
            self.tbf = TimeAndBatchUnflattener()
            self.vf = torch.nn.Linear(32, 1)

        def forward(self, ob, state_in=None, mask=None):
            """Forward."""
            if isinstance(ob, (list, tuple)):
                ob = ob[0]
            x = self.net(ob.float())
            if state_in is None:
                x, state_out = self.lstm(self.tbf(x))
            else:
                x = self.tbf(x, state_in['lstm'][0])
                mask = self.tbf(mask, state_in['lstm'][0])
                x, state_out = self.lstm(x, state_in['lstm'], mask)
            x = self.tbf.flatten(x)
            state_out = {'lstm': state_out, '1': torch.zeros_like(state_out[0])}
            return self.dist(x), self.vf(x), state_out

    class RolloutActor(object):
        """actor."""

        def __init__(self, pi):
            """init."""
            self.pi = pi

        def __call__(self, ob, state_in=None, mask=None):
            """act."""
            outs = self.pi(ob, state_in, mask)
            data = {'value': outs.value,
                    'action': outs.action}
            if outs.state_out:
                data['state'] = outs.state_out
            if isinstance(ob, (list, tuple)):
                data['key1'] = torch.zeros_like(ob[0])
            else:
                data['key1'] = torch.zeros_like(ob)
            return data

    class NestedVecObWrapper(VecEnvWrapper):
        """Nest observations."""

        def __init__(self, venv):
            """Init."""
            super().__init__(venv)
            self.observation_space = Tuple([self.observation_space,
                                            self.observation_space])

        def reset(self):
            """Reset."""
            ob = self.venv.reset()
            return (ob, ob)

        def step_wait(self):
            """Step."""
            ob, r, done, info = self.venv.step_wait()
            return (ob, ob), r, done, info

    def test(env, base, batch_size, nested):
        pi = Policy(base(env.observation_space,
                         env.action_space))
        if nested:
            env = NestedVecObWrapper(env)
        nenv = env.num_envs
        data_manager = RolloutDataManager(env, RolloutActor(pi), 'cpu',
                                          batch_size=batch_size)
        for _ in range(3):
            data_manager.rollout()
            count = 0
            for batch in data_manager.sampler():
                assert 'key1' in batch
                count += 1
                assert 'mask' in batch
                if data_manager.recurrent:
                    assert 'state' in batch
                    data_manager.act(batch['obs'], batch['state'],
                                     batch['mask'])
                else:
                    data_manager.act(batch['obs'])
            if data_manager.recurrent:
                assert count == nenv // data_manager.batch_size
            else:
                assert count == (
                    (nenv * data_manager.rollout_length)
                    // data_manager.batch_size)

    def env_discrete(nenv):
        """Create discrete env."""
        return make_env('CartPole-v1', nenv=nenv)

    def env_continuous(nenv):
        """Create continuous env."""
        return make_env('LunarLanderContinuous-v2', nenv=nenv)

    class TestRolloutDataCollection(unittest.TestCase):
        """Test case."""

        def test_feed_forward(self):
            """Test feed forward network."""
            test(env_discrete(2), FeedForwardBase, 32, False)

        def test_recurrent(self):
            """Test recurrent network."""
            test(env_discrete(2), RNNBase, 2, False)

        def test_feed_forward_nested_ob(self):
            """Test feed forward network."""
            test(env_discrete(2), FeedForwardBase, 32, False)

        def test_recurrent_nested_ob(self):
            """Test recurrent network."""
            test(env_discrete(2), RNNBase, 2, False)

    unittest.main()
