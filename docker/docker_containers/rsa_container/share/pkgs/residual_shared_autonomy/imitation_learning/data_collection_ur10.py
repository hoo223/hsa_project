#!/usr/bin/python
# -*- coding: utf8 -*- 

## standard library
import numpy as np
import time
import os
import sys
import matplotlib.pyplot as plt
import gym
import torch
import argparse

## ros library
import rospy
import ros
from std_msgs.msg import Float64MultiArray, String, Empty

## custom library
sys.path.append("/root/catkin_ws/src/ur10_python_interface/scripts") # 필요한 python 파일이 있는 경로 추가
from rl_interface import RLInterface


def main(args):

    if os.path.exists(args.datafile):
        if not args.overwrite:
            raise ValueError('Data file {} already exists. Add --overwrite to '
                             ' overwrite the file.'.format(args.datafile))

    FPS = 20
    rli = RLInterface(FPS=FPS, save=True)
    rate = rospy.Rate(FPS)
    FPS_pub = rospy.Publisher('rl_loop_rate', Empty, queue_size=1)

    #while not rospy.is_shutdown():
    for i in range(args.neps):
        print("\nepisode {}".format(i+1))
        rli.env._reset()
        print(rli.env.start_teleop_client())
        ob = rli.env._state

        #rli.time_check_start()
        for j in range(rli.num_step):
            print("step: {}".format(j), end='\r')
            ob_next, reward, done = rli.loop(ob)
            ob = ob_next
            ## exit if X button is pushed or done is True
            if rli.button == 2 or done == True:
                break
            FPS_pub.publish(Empty())
            rate.sleep()
            #rli.time_check_end()

        print("\nEpisode {} Finished".format(i))

    if rli.save:   
        obs, actions, rewards, dones = zip(*rli.transitions)
        print(type(obs))
        data = {'obs': torch.Tensor(obs).squeeze(),
                'actions': torch.Tensor(actions).squeeze(),
                'rewards': torch.Tensor(rewards).squeeze(),
                'dones': torch.Tensor(dones).squeeze()}

        torch.save(data, '/root/pkgs/residual_shared_autonomy/imitation_learning/data/' + args.datafile)
        print("\Saved")

    rli.env._reset()
    pass


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Data collection.')
    parser.add_argument('datafile', type=str, help='datafile')
    parser.add_argument('neps', type=int, help='# of episodes')
    parser.add_argument('--overwrite', action='store_true',
                        help='overwrite data')
    args = parser.parse_args()

    main(args)
