#!/usr/bin/python3
# -*- coding: utf8 -*- 

import torch
import time
import sys
import argparse
sys.path.append("/root/catkin_ws/src/ur10_python_interface/scripts") # 필요한 python 파일이 있는 경로 추가
from rl_interface import RLInterface

import rospy


class DataReplay(object):
    def __init__(self, data):
        #rospy.init_node('data_replay', anonymous=True)
        self.data = torch.load(data)
        self.parse_data()
        self.rli = RLInterface()

    def parse_data(self):
        self.keys = self.data.keys()
        self.data_num = self.data['obs'].size()[0]
        self.obs = self.data['obs']
        self.actions = self.data['actions']
        self.rewards = self.data['rewards']
        self.dones = self.data['dones']
        print("keys: ", self.keys)
        print("data num: ", self.data_num)
        print("obs size: ", self.obs.size())
        print("actions size: ", self.actions.size())
        print("rewards size: ", self.rewards.size())
        print("dones size: ", self.dones.size())
        print("Data Parsed!")

    def data_replay(self):
        start_ros_time = rospy.Time.now()
        FPS = 20
        rate = rospy.Rate(FPS)
        self.rli.env.reset()
        print(self.rli.env.start_teleop_client())
        ob = self.rli.env._state
        ## loop 
        for i in range(self.data_num):
            ob_next, reward, done = self.rli.env.step(ob, self.actions[i])
            ob = ob_next
            start_ros_time = rospy.Time.now()
            if self.rli.button == 2 or done == True:
                break
            rate.sleep()
        print("Replay Finished")


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Data collection.')
    parser.add_argument('datafile', type=str, help='datafile')
    args = parser.parse_args()

    data = "/root/catkin_ws/src/ur10_python_interface/data/" + args.datafile
    dr = DataReplay(data)

    ## wait for start signal
    print("============ Press `Enter` to start main loop ...")
    input()

    ## main loop
    dr.data_replay()

    ## set init pose
    dr.rli.env.reset_episode_client()

