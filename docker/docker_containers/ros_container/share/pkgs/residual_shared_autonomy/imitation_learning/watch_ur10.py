"""Render trained behavioral cloning agents."""
import dl
from dl.rl import make_env, VecObsNormWrapper
from residual_shared_autonomy.imitation_learning import bc_mean, bc_std
from residual_shared_autonomy.imitation_learning import drone_bc_mean, drone_bc_std
from residual_shared_autonomy.imitation_learning import BCTrainer
import residual_shared_autonomy.lunar_lander
import residual_shared_autonomy.drone_sim
import argparse
import os
import torch
import sys

sys.path.append("/root/catkin_ws/src/ur10_python_interface/scripts") # 필요한 python 파일이 있는 경로 추가
from rl_interface import RLInterface

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Train Script.')
    parser.add_argument('logdir', type=str, help='logdir')
    parser.add_argument('--drone', action='store_true', help='logdir')
    args = parser.parse_args()

    dl.load_config(os.path.join(args.logdir, 'config.gin'))

    trainer = BCTrainer(args.logdir)
    trainer.load()

    # id = "DroneReacherBot-v0" if args.drone else "LunarLanderRandomContinuous-v2"
    # env = make_env(env_id=id,
    #                nenv=1, norm_observations=False)

    FPS = 20
    rli = RLInterface(FPS=FPS, save=False)

    # if args.drone:
    #     env = VecObsNormWrapper(env, mean=drone_bc_mean(),
    #                             std=drone_bc_std(), log=False)
    # else:
    #     env = VecObsNormWrapper(env, mean=bc_mean(), std=bc_std(), log=False)

    for ep in range(1):
        print("Episode{}".format(ep))
        rli.env._reset()
        print(rli.env.start_teleop_client()) # start teleop
        ob = rli.env._state
        done = False
        while not done:
            dist = trainer.model(torch.from_numpy(ob).float().to(trainer.device))
            ob, _, done = rli.env._step(ob, dist.sample().cpu().numpy())
            if rli.button == 2 or done == True:
                break
            #env.render()
    rli.env._reset()
    print("Finished")
