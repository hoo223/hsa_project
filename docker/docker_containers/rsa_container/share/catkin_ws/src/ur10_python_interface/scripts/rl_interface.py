#!/root/anaconda3/bin/python
# -*- coding: utf8 -*- 


## standard library
import numpy as np
import time
import os
import sys
import matplotlib.pyplot as plt
import gym
import torch

## ros library
import rospy
import ros
from std_msgs.msg import Float64MultiArray, String, Empty

#from cv_bridge import CvBridge

## custom library
#from ur10_env import UR10Env

## Ros Duration to Time
def Duration2Time(duration):
  return duration.secs + duration.nsecs*1e-9

class RLInterface(object):
  def __init__(self, num_epsoide=1, time_per_ep=200, FPS=1000.0, save=False, verbose=False):
    rospy.init_node('rl_interface', anonymous=True)
    #self.env = UR10Env(FPS=50)
    self.env = gym.make('ur10_env:ur10-v0')
    self.transitions = []
    self.FPS = FPS
    self.period = rospy.Duration(1./FPS)
    self.num_epsoide = num_epsoide
    self.num_step = time_per_ep*FPS
    self.human_action = np.zeros(6)
    self.agent_action = np.zeros(6)
    self.save = save
    self.button = -1

    # publisher
    self.test_pub = rospy.Publisher('test', String, queue_size=1)

    # subscriber
    self.human_action_sub = rospy.Subscriber('/human_action', Float64MultiArray, self.human_action_callback)
    self.joy_sub = rospy.Subscriber('joy_command', Float64MultiArray, self.joy_command_callback)

    pass
  
  def loop(self, ob):
    # get actions from human and agent
    a_h = self.human_action
    #a_r = self.get_agent_action(ob, a_h)

    # combine actions
    action = a_h #+ a_r
    ob_next, reward, done, _ = self.env.step(action)
    #self.test_pub.publish("{}".format(np.array(ob_next)-np.array(ob)))

    ## data collection
    if self.save:
      transition = [ob, action, reward, done]
      #transition = [reward]
      self.transitions.append(transition)
      self.test_pub.publish("ob:{}, a:{}, r:{}, n_ob:{}".format(ob, action, reward, ob_next))

    return ob_next, reward, done 

  def get_agent_action(self, ob, a_h):
    #-- implementation --#
    a_r = self.agent_action
    #--------------------#
    return a_r

  def human_action_callback(self, data):
    self.human_action = np.array(data.data)
    #print(type(self.human_action))

  def joy_command_callback(self, data):
    self.joy_command = data.data
    self.button = self.joy_command[4]

  def time_check_start(self):
    self.start_ros_time = time.time()
    self.queue = [self.start_ros_time]

  def time_check_end(self):
    end_ros_time = time.time()
    elapsed_time = end_ros_time-self.start_ros_time
    self.queue.insert(0, elapsed_time)
    if len(self.queue) > self.FPS:
      self.queue.pop()
      avg_elapsed_time = np.mean(np.array(self.queue))
      print("{:.5f}".format(avg_elapsed_time))
    self.start_ros_time = end_ros_time


def main():
  FPS = 20
  rli = RLInterface(num_epsoide=1000, FPS=FPS, save=False)
  rate = rospy.Rate(FPS)
  FPS_pub = rospy.Publisher('rl_loop_rate', Empty, queue_size=1)
  

  #while not rospy.is_shutdown():
  for i in range(rli.num_epsoide):

    print("\nepisode {}".format(i+1))
    rli.env.reset()
    rli.env.start_teleop_client()
    ob = rli.env._state
    #print(ob)

    #rli.time_check_start()
    total_reward = 0
    for j in range(rli.num_step):
      print("step: {}".format(j), end='\r')
      if rospy.get_param('teleop_state') == 'stop':
        break
      ob_next, reward, done = rli.loop(ob)
      ob = ob_next
      #print(ob)
      total_reward += reward
      ## exit if X button is pushed or done is True
      if rli.button == 2 or done == True:
        rospy.set_param('teleop_state', 'stop')
        break
      FPS_pub.publish(Empty())
      rate.sleep()
      #rli.time_check_end()
    print("total reward: {}".format(total_reward))

    if rli.save:   
      obs, actions, rewards, dones = zip(*rli.transitions)
      print(type(obs))
      data = {'obs': torch.Tensor(obs).squeeze(),
              'actions': torch.Tensor(actions).squeeze(),
              'rewards': torch.Tensor(rewards).squeeze(),
              'dones': torch.Tensor(dones).squeeze()}
      torch.save(data, '/root/share/catkin_ws/src/ur10_python_interface/data/'+'test')
      print("\Saved")
  print("\nEpisode Finished")

  

  rli.env.reset()
  pass


if __name__ == '__main__':
  
  main()