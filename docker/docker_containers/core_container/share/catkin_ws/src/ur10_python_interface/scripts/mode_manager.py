#!/usr/bin/python
# -*- coding: utf8 -*- 


## standard library
import sys
#print(sys.executable) # python version
import copy
from math import *
import pygame
import time
import numpy as np
from numpy.linalg import inv, det, svd, eig

## ros library
import rospy
from tf.transformations import *
from std_msgs.msg import String, Float64MultiArray, Float64, Bool
from std_srvs.srv import Trigger, TriggerResponse, TriggerRequest
from geometry_msgs.msg import PoseStamped, Quaternion, Pose
from geometry_msgs.msg import Quaternion
from controller_manager_msgs.srv import SwitchControllerRequest, SwitchController

## function definition


## class definition
class ModeManager(object):
  """MoveGroupPythonInteface"""
  def __init__(self, prefix=''):
    super(ModeManager, self).__init__()

    self.button = 0.0
    self.prefix = prefix

    # subscriber
    joy_sub = rospy.Subscriber('joy_command', Float64MultiArray, self.joy_command_callback)
    m_index_subscriber = rospy.Subscriber("/m_index", Float64, callback=self.m_index_callback, queue_size=10)
    eigen_value_subscriber = rospy.Subscriber("/eigen_value", Float64MultiArray, callback=self.eigen_value_callback, queue_size=10)
    self_collision_subscriber = rospy.Subscriber("self_collision", Bool, callback=self.self_collision_callback, queue_size=10)

  def start_teleop(self):
    rospy.wait_for_service(self.prefix+'/start_teleop')
    start_teleop_service = rospy.ServiceProxy(self.prefix+'/start_teleop', Trigger)
    req = TriggerRequest()
    res = start_teleop_service(req)
    return res 

  def reset_pose(self):
    rospy.wait_for_service(self.prefix+'/reset_pose')
    reset_pose_service = rospy.ServiceProxy(self.prefix+'/reset_pose', Trigger)
    req = TriggerRequest()
    res = reset_pose_service(req)
    return res


  def joy_command_callback(self, data):
    self.joy_command = data.data
    self.button = self.joy_command[6]
    
  def m_index_callback(self, data):
    self.m_index = data.data
  
  def eigen_value_callback(self, data):
    self.eigen_value = data.data

  def self_collision_callback(self, data):
    self.self_collision = data.data
    
  def check_singularity(self):
    singularity = False
    
    m_index = self.m_index
    e_value = list(self.eigen_value)
    self_collision = self.self_collision

    e_value.append(m_index)
    e_value.sort()
    #print(e_value)

    # penalty for reaching singularity
    if e_value[0] < 0.03:
      singularity = True
    
    # penalty for self collision
    if self_collision == True:
      singularity = True
      
    return singularity


def main():
  args = rospy.myargv()

  if len(args) > 1: 
    prefix = '/'+args[1]
  else:
    prefix = ''
  
  interface_param = '/interface'
  teleop_state_param = '/teleop_state'

  rospy.init_node("mode_manager", anonymous=True)
  rate = rospy.Rate(1100)
  mm = ModeManager(prefix=prefix) 

  # wait for initializing the interface
  while rospy.get_param(prefix+interface_param) != 'ready':
    print(prefix+interface_param + " not ready")
    print(args)

  ## set init pose
  while not mm.reset_pose().success:
    print("Failed to go to init state")
  print("Success to get init state!")

  while not rospy.is_shutdown(): 
    # Button loop
    # start button -> teleop start
    teleop_state = rospy.get_param(prefix+teleop_state_param)
    if mm.button == 7.0 and teleop_state == 'stop': 
      mm.start_teleop()
      print("teleop start")
    # back button -> teleop stop and reset pose
    elif mm.button == 6.0  and teleop_state == 'start':
      mm.reset_pose()
      print("teleop stop")
      
    # Reset for singularity 
    # if teleop_state == 'start' and mm.check_singularity:
    #   mm.reset_pose()
    #   print("teleop stop")
    
      
    rate.sleep()
  print("Finished")


if __name__ == '__main__':
  main()
  