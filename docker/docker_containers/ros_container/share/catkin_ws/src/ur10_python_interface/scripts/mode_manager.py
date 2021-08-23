#!/usr/bin/python3
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
from std_msgs.msg import String
from std_msgs.msg import Float64MultiArray
from std_srvs.srv import Trigger, TriggerResponse, TriggerRequest
from geometry_msgs.msg import PoseStamped, Quaternion, Pose
from geometry_msgs.msg import Quaternion
from controller_manager_msgs.srv import SwitchControllerRequest, SwitchController

## function definition


## class definition
class ModeManager(object):
  """MoveGroupPythonInteface"""
  def __init__(self):
    super(ModeManager, self).__init__()

    # subscriber
    joy_sub = rospy.Subscriber('joy_command', Float64MultiArray, self.joy_command_callback)

  def start_teleop(self):
    rospy.wait_for_service('/start_teleop')
    start_teleop_service = rospy.ServiceProxy('/start_teleop', Trigger)
    req = TriggerRequest()
    res = start_teleop_service(req)
    return res 

  def reset_pose(self):
    rospy.wait_for_service('/reset_pose')
    reset_pose_service = rospy.ServiceProxy('/reset_pose', Trigger)
    req = TriggerRequest()
    res = reset_pose_service(req)
    return res


  def joy_command_callback(self, data):
    self.joy_command = data.data
    self.button = self.joy_command[4]


def main():
  rospy.init_node("mode_manager", anonymous=True)
  rate = rospy.Rate(1100)
  mm = ModeManager() 

  ## set init pose
  while not mm.reset_pose().success:
    print("Failed to go to init state")
  print("Success to get init state!")

  while not rospy.is_shutdown(): 
    # Button loop
    # start button -> teleop start
    teleop_state = rospy.get_param('teleop_state')
    if mm.button == 7.0 and teleop_state == 'stop': 
      mm.start_teleop()
      print("teleop start")
    # back button -> teleop stop and reset pose
    elif mm.button == 6.0  and teleop_state == 'start':
      mm.reset_pose()
      print("teleop stop")
    rate.sleep()
  print("Finished")


if __name__ == '__main__':
  main()
  