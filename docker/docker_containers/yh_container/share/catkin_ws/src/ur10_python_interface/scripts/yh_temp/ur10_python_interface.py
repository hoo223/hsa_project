#!/usr/bin/python3

# Software License Agreement (BSD License)
#
# Copyright (c) 2013, SRI International
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of SRI International nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Author: Acorn Pooley, Mike Lautman

## BEGIN_SUB_TUTORIAL imports
##
## To use the Python MoveIt interfaces, we will import the `moveit_commander`_ namespace.
## This namespace provides us with a `MoveGroupCommander`_ class, a `PlanningSceneInterface`_ class,
## and a `RobotCommander`_ class. More on these below. We also import `rospy`_ and some messages that we will use:
##

import sys
print(sys.executable) # python version
import copy
from math import *
import pygame
import time
import numpy as np
from numpy.linalg import inv, det

import rospy
import moveit_commander
from moveit_commander.conversions import pose_to_list
import moveit_msgs.msg
from tf.transformations import *
from std_msgs.msg import String
from std_msgs.msg import Float64MultiArray
from geometry_msgs.msg import PoseStamped, Quaternion
from geometry_msgs.msg import Quaternion
from controller_manager_msgs.srv import SwitchControllerRequest, SwitchController

from joystick import JoystickActor
from get_ik import GetIK
from move_group_python_interface import MoveGroupPythonInteface

pygame.init()
FPS = 60 # frames per second setting
fpsClock = pygame.time.Clock()

## END_SUB_TUTORIAL


# BOUND
X_UPPER = 0.5
X_LOWER = -0.16934080164772752
Y_UPPER = 0.8
Y_LOWER = 0.4
Z_UPPER = 0.85
Z_LOWER = 0.5

def teleop_loop(robot):
  # create joint velocity message
  joint_vel_msg = Float64MultiArray()

  # get current pose
  current_pose = robot.get_current_pose()
  target_pose = current_pose
  x_pos = current_pose.position.x
  y_pos = current_pose.position.y
  z_pos = current_pose.position.z
  current_RPY = euler_from_quaternion(robot.xyzw_array(current_pose.orientation))
  roll_pos = current_RPY[0]
  pitch_pos = current_RPY[1]
  yaw_pos = current_RPY[2]
  #q_orig = robot.xyzw_array(robot.get_current_pose().orientation)

  # joystick module
  actor = JoystickActor()

  p_gain = 3
  speed_level = 3
  while(True):
    # get input from joystick
    input, button = actor()
    #print(button)
    # exit if X button is pushed
    if button == 2:
      break

    # change speed
    if button == 5:
      speed_level += 1
      if speed_level > 10:
        speed_level = 10
    elif button == 4:
      speed_level -= 1
      if speed_level < 1:
        speed_level = 1
    # button clear
    actor.button[0] = -1
    button = -1

    input_scale = 0.001 * speed_level

    x_input = -input[0][0]
    y_input = input[0][1]
    z_input = input[1][0]
    yaw_input = input[1][1]
    x_pos += input_scale*x_input
    y_pos += input_scale*y_input
    z_pos += input_scale*z_input
    yaw_pos += input_scale*yaw_input
    
    q_new = quaternion_from_euler(roll_pos, pitch_pos, yaw_pos)
    target_orientation = Quaternion(q_new[0], q_new[1], q_new[2], q_new[3])
    
    if x_pos < X_LOWER:
      x_pos = X_LOWER
    elif x_pos > X_UPPER:
      x_pos = X_UPPER
    if y_pos < Y_LOWER:
      y_pos = Y_LOWER
    elif y_pos > Y_UPPER:
      y_pos = Y_UPPER
    if z_pos < Z_LOWER:
      z_pos = Z_LOWER
    elif z_pos > Z_UPPER:
      z_pos = Z_UPPER

    singular = robot.get_singular()
    print("speed: {:d}, x: {:.3f}, y: {:.3f}, z: {:.3f}, yaw: {:.3f}, \
           singular: {:.3f}".format(speed_level, x_pos, y_pos, z_pos, yaw_pos, singular))
    target_pose.position.x = x_pos
    target_pose.position.y = y_pos
    target_pose.position.z = z_pos
    target_pose.orientation = target_orientation
    #q_orig = q_new

    # get IK of target cartesian pose = target joint values
    ps = PoseStamped()
    ps.pose = target_pose
    ik = robot.ik_solver.get_ik(ps)
    target_joints = ik.solution.joint_state.position
    #print(target_joints)

    # current state feedback
    current_joints = robot.get_current_joint_value()


    # compute control input
    joint_errors = np.array(target_joints) - np.array(current_joints)
    joint_vel = p_gain*joint_errors
    #print(joint_errors)

    # command control input     
    joint_vel_msg.data = joint_vel
    robot.vel_pub.publish(joint_vel_msg)

    # update
    fpsClock.tick(FPS)

  joint_vel_msg.data = np.zeros(6)
  robot.vel_pub.publish(joint_vel_msg)

def main():
  args = rospy.myargv()
  if len(args) < 2:
    print("You need to type the mode argument: 'sim' or 'real'")
    print("ex: ~/ur10_python_interface.py sim")
    print("ex: ~/ur10_python_interface.py real")
    exit()
  else:
    mode = args[1]
    print(mode)
  if mode == "real":
    base_controller = "scaled_pos_joint_traj_controller"
    velocity_controller = "joint_group_vel_controller"
  else:
    base_controller = "arm_controller"
    velocity_controller = "joint_group_velocity_controller"

  try:
    print("============ Press `Enter` to begin the tutorial by setting up the moveit_commander ...")
    raw_input()
    robot = MoveGroupPythonInteface(base_controller=base_controller, velocity_controller=velocity_controller)
    
   

    print("============ Press `Enter` to execute a movement using a joint state goal ...")
    raw_input()
    robot.go_to_init_state()

    print("============ Press `Enter` to get current pose")
    raw_input()
    robot.test_print()

# ------------------------------------------------------------------------------------------- #

    print("============ Press `Enter` to command joint velocity ...")
    raw_input() 

    # change to velocity controller
    robot.controller_change([base_controller], [velocity_controller])
    teleop_loop(robot)
    # return to base controller
    robot.controller_change([velocity_controller], [base_controller])

# ------------------------------------------------------------------------------------------- #

    print("============ Press `Enter` to set init pose ...")
    raw_input() 
    robot.go_to_init_state()

# ------------------------------------------------------------------------------------------- #

    print("============ Python tutorial demo complete!")

# ------------------------------------------------------------------------------------------- #

  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()
