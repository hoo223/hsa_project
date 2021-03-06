#!/usr/bin/python
# -*- coding: utf8 -*- 


## standard library
import numpy as np
import time
import os
import sys
import matplotlib.pyplot as plt
#import gym
#import torch

## ros library
import rospy
import ros
from std_msgs.msg import Float64MultiArray, String
from geometry_msgs.msg import Pose
from sensor_msgs.msg import JointState
#from cv_bridge import CvBridge

## custom library
from move_group_python_interface import MoveGroupPythonInteface


## Function Definition
# Ros Duration to Time
def Duration2Time(duration):
  return duration.secs + duration.nsecs*1e-9

# teleoperation loop
def teleop_loop(robot_interface, FPS=1000):
  while(True):
    button, a_h, done = robot_interface.teleop_loop()
 
    ## exit if X button is pushed
    if button == 2:
      robot_interface.stop()
      break

    ## update
    robot_interface.fpsClock.tick(FPS)


class TeleopController(object):
  def __init__(self, env=False, rsa=False, verbose=False, prefix=''):

    self.prefix = prefix
    self.target_joints = np.zeros(6)
    self.current_joints = np.zeros(6)
    self.p_gain = 5
    self.joint_vel_msg = Float64MultiArray()  
    self.teleop_state = 'stop'
    
    # gripper
    self.with_gripper = False #rospy.get_param('/with_gripper')

    # subscriber
    self.target_joint_sub = rospy.Subscriber(self.prefix+'/ik_result', Float64MultiArray, self.target_joint_callback)
    if self.with_gripper:
      self.current_joint_sub = rospy.Subscriber(self.prefix+'/joint_states', JointState, self.current_joint_with_gripper_callback)
    else:
      self.current_joint_sub = rospy.Subscriber(self.prefix+'/joint_states', JointState, self.current_joint_callback)

    # publisher
    if env and not rsa:
      velocity_name = prefix+'/human_action'
    else:
      velocity_name = prefix+'/joint_group_vel_controller/command'
      
    self.vel_pub = rospy.Publisher(velocity_name, Float64MultiArray, queue_size=10)

  def control_loop(self):
    try:
      # compute control input
      joint_errors = np.array(self.target_joints) - np.array(self.current_joints)
      self.joint_vel_msg.data = self.p_gain*joint_errors
      # self.joint_vel_msg.data[3] = 0
      # self.joint_vel_msg.data[4] = 0
      # self.joint_vel_msg.data[5] = 0
    except:
      self.joint_vel_msg.data = np.zeros(6)
    self.vel_pub.publish(self.joint_vel_msg)

  def target_joint_callback(self, data):
    self.target_joints = data.data

  def current_joint_callback(self, data):
    current_joints = list(data.position)
    # gazebo?????? ?????? joint states ????????? ????????? ??????
    # [elbow_joint, shoulder_lift_joint, shoulder_pan_joint, wrist_1_joint, wrist_2_joint, wrist_3_joint] - 2 1 0 3 4 5 
    self.current_joints[0] = current_joints[2]
    self.current_joints[1] = current_joints[1]
    self.current_joints[2] = current_joints[0]
    self.current_joints[3] = current_joints[3]
    self.current_joints[4] = current_joints[4]
    self.current_joints[5] = current_joints[5]
    
  def current_joint_with_gripper_callback(self, data):  
    current_joints = list(data.position)
    # gazebo?????? ?????? joint states ????????? ????????? ??????
    # [elbow_joint, robotiq_85_left_knuckle_joint, shoulder_lift_joint, shoulder_pan_joint, wrist_1_joint, wrist_2_joint, wrist_3_joint] - 3 2 0 4 5 6 
    self.current_joints[0] = current_joints[3]
    self.current_joints[1] = current_joints[2]
    self.current_joints[2] = current_joints[0]
    self.current_joints[3] = current_joints[4]
    self.current_joints[4] = current_joints[5]
    self.current_joints[5] = current_joints[6]

  def teleop_state_callback(self, data):
    self.teleop_state = data.data

# main function
def main():
  args = rospy.myargv()
  if len(args) > 1: 
    prefix = '/'+args[1]
  else:
    prefix = ''
  
  rospy.init_node("teleop_controller", anonymous=True)
  tc = TeleopController(env=False, rsa=False, prefix=prefix)
  rate = rospy.Rate(250)
  while not rospy.is_shutdown():
    #print(tc.teleop_state)
    if rospy.get_param(prefix+'/teleop_state') == 'start':
      tc.control_loop()
    rate.sleep()

if __name__ == '__main__':
  main()

