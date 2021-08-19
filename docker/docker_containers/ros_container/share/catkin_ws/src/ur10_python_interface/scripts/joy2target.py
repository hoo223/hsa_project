#!/usr/bin/python3
# -*- coding: utf8 -*- 


## standard library
import numpy as np
import time
import os
import sys
import matplotlib.pyplot as plt
import gym
import torch
import copy

## ros library
import rospy
import ros
import tf
from tf.transformations import quaternion_from_euler
from std_msgs.msg import Float64MultiArray, String
from std_srvs.srv import Trigger, TriggerResponse
from sensor_msgs.msg import JointState
from geometry_msgs.msg import PoseStamped, Quaternion, Pose
from omni_msgs.msg import OmniButtonEvent
#from cv_bridge import CvBridge

## custom library
from move_group_python_interface import MoveGroupPythonInteface

class Joy2Target(object):
  def __init__(self, verbose=False):
    
    self.verbose = verbose
    self.pre_button = None
    self.teleop_state = "stop"
    self.joy_command = np.zeros(5)
    self.random_action = np.zeros(6)
    self.grey_button_state = 0
    self.white_button_state = 0
    self.haptic_move_state = False
    self.haptic_error = [0, 0, 0]
    self.target_robot_pos = [0, 0, 0]

    # teleop parameters
    self.speed_gain = 0.00024 # for input scale
    self.speed_level = 3
    self.delay_step = 0

    # subscriber
    self.joy_sub = rospy.Subscriber('joy_command', Float64MultiArray, self.joy_command_callback)
    self.teleop_state_sub = rospy.Subscriber('/teleop_state', String, self.teleop_state_callback)
    self.current_joint_sub = rospy.Subscriber('/joint_states', JointState, self.current_joint_callback)
    self.haptic_pose_sub = rospy.Subscriber('/phantom/pose', PoseStamped, self.haptic_pose_callback)
    self.haptic_button_sub = rospy.Subscriber('/phantom/button', OmniButtonEvent, self.haptic_button_callback)

    # publisher
    self.target_pose_pub = rospy.Publisher("target_pose", Pose, queue_size= 10)
    self.haptic_error_pub = rospy.Publisher("haptic_error", Float64MultiArray, queue_size=10)

    # tf listener
    self.listener = tf.TransformListener()
    
    #self.init_pose = [0.17488465, 0.53148766, 0.49063472, 1.63007136, 1.52047576, 3.0807627]
    self.init_pose = [0.17480582, 0.50746106, 0.69538257, 0.09267109, 0.00379392, 1.59158403]
    self.target_pose = copy.deepcopy(self.init_pose)

    # reset target service
    self.reset_target_service = rospy.Service('reset_target_pose', Trigger, self.reset_target)

  def input_conversion(self, random_agent=False):

    if random_agent: # random human model
      if self.delay_step > 200:
        self.random_action = 2*(np.random.rand(6)-0.5)
        #print(random_action)
        self.delay_step = 0
      self.delay_step += 1

      x_input = -self.random_action[0]
      y_input = self.random_action[1]
      z_input = self.random_action[2]
      roll_input = 0
      pitch_input = 0
      yaw_input = -self.random_action[5]

    else: # human teleop
      x_input = -self.joy_command[0]
      y_input = self.joy_command[1]
      z_input = self.joy_command[2]
      roll_input = 0
      pitch_input = 0
      yaw_input = -self.joy_command[3]

    button = int(self.joy_command[4])

    # change speed
    if button != self.pre_button: # restrict the continuous change
      if button == 5 and button:
        self.speed_level += 1
        if self.speed_level > 10:
          self.speed_level = 10
      elif button == 4:
        self.speed_level -= 1
        if self.speed_level < 1:
          self.speed_level = 1
      self.pre_button = button

    input_scale = self.speed_gain * self.speed_level
    

    self.target_pose[0] += input_scale*x_input 
    self.target_pose[1] += input_scale*y_input
    self.target_pose[2] += input_scale*z_input
    self.target_pose[3] += input_scale*roll_input
    self.target_pose[4] += input_scale*pitch_input
    self.target_pose[5] += input_scale*yaw_input # + self.current_joints[0] + 1.6014290296237252
    
    # print
    if self.verbose:
      print("speed: {:d}, x: {:.3f}, y: {:.3f}, z: {:.3f}, roll: {:.3f}, pitch: {:.3f}, yaw: {:.3f} \
            ".format(self.speed_level, self.target_pose[0], self.target_pose[1], self.target_pose[2], \
                                      self.target_pose[3], self.target_pose[4], self.target_pose[5]))

    q_new = quaternion_from_euler(self.target_pose[3], self.target_pose[4], self.target_pose[5]) # roll, pitch, yaw
    target_orientation = Quaternion(q_new[0], q_new[1], q_new[2], q_new[3])

    #Workspace limit
    # # if self.target_pose[0] < X_LOWER:
    # #   self.target_pose[0] = X_LOWER
    # # elif self.target_pose[0] > X_UPPER:
    # #   self.target_pose[0] = X_UPPER
    # # if self.target_pose[1] < Y_LOWER:
    # #   self.target_pose[1] = Y_LOWER
    # # elif self.target_pose[1] > Y_UPPER:
    # #   self.target_pose[1] = Y_UPPER
    # # if self.target_pose[2] < Z_LOWER:
    # #   self.target_pose[2] = Z_LOWER
    # # elif self.target_pose[2] > Z_UPPER:
    # #   self.target_pose[2] = Z_UPPER

    # # get IK of target cartesian pose = target joint values
    ps = Pose()
    ps.position.x = self.target_pose[0]
    ps.position.y = self.target_pose[1]
    ps.position.z = self.target_pose[2]
    ps.orientation = target_orientation
    return ps

  def reset_target(self, req):
    result.message = "target pose reset"
    return result

  def joy_command_callback(self, data):
    self.joy_command = data.data

  def teleop_state_callback(self, data):
    self.teleop_state = data.data

  def current_joint_callback(self, data):
    self.current_joints = list(data.position)
    # gazebo에서 나온 joint states 순서가 바뀌어 있음
    temp = self.current_joints[0]
    self.current_joints[0] = self.current_joints[2]
    self.current_joints[2] = temp
    #print(self.current_joints)

  def haptic_pose_callback(self, data):
    self.haptic_pose = data.pose
    if self.haptic_move_state == True:
      x_error = self.haptic_pose.position.x - self.start_haptic_pose.position.x
      y_error = self.haptic_pose.position.y - self.start_haptic_pose.position.y
      z_error = self.haptic_pose.position.z - self.start_haptic_pose.position.z
      self.haptic_error = [x_error, y_error, z_error]
      temp = Float64MultiArray()
      temp.data = [x_error, y_error, z_error]
      #self.haptic_error_pub.publish(temp)

      haptic_scale = 2
      self.target_robot_pos = [self.start_robot_pos[0] + haptic_scale*x_error, self.start_robot_pos[1] + haptic_scale*y_error, self.start_robot_pos[2] + haptic_scale*z_error]
      self.target_pose[0] = self.target_robot_pos[0]
      self.target_pose[1] = self.target_robot_pos[1]
      self.target_pose[2] = self.target_robot_pos[2]

  def haptic_button_callback(self, data):
    if (self.haptic_move_state == False) and (self.grey_button_state == 0 or self.white_button_state == 0) and (data.white_button == 1 and data.grey_button == 1):
      self.start_haptic_pose = self.haptic_pose
      self.start_robot_pos = [self.target_pose[0], self.target_pose[1], self.target_pose[2]]
      self.haptic_move_state = True 
    elif (self.haptic_move_state == True) and (data.white_button == 0 or data.grey_button == 0):
      self.haptic_move_state = False
    #print(self.haptic_move_state)
    
def main():
  rospy.init_node("joy2target_converter", anonymous=True)
  j2t = Joy2Target()
  rate = rospy.Rate(250)
  while not rospy.is_shutdown():
    if rospy.get_param('teleop_state') == "start":
      target_pose = j2t.input_conversion(random_agent=False)
    else:
      # try:
      #   (trans,rot) = j2t.listener.lookupTransform('/base_link', '/ee_link', rospy.Time(0))
      #   j2t.trans = trans
      # except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
      #   continue
      j2t.target_pose = copy.deepcopy(j2t.init_pose)
      target_pose = j2t.input_conversion()
    j2t.target_pose_pub.publish(target_pose)
    rate.sleep()


if __name__ == '__main__':
  main()