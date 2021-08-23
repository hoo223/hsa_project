#!/usr/bin/python
# -*- coding: utf8 -*- 

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

import time
import numpy as np
from numpy.linalg import inv, det, svd

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

FPS = 60 # frames per second setting

## END_SUB_TUTORIAL


# BOUND
X_UPPER = 0.5
X_LOWER = -0.16934080164772752
Y_UPPER = 0.8
Y_LOWER = 0.4
Z_UPPER = 0.85
Z_LOWER = 0.5

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
    #raw_input()
    robot = MoveGroupPythonInteface(base_controller=base_controller, velocity_controller=velocity_controller)
    
    print("============ Press `Enter` to execute a movement using a joint state goal ...")
    #raw_input()
    robot.go_to_init_state()

    # print("============ Press `Enter` to get current pose")
    raw_input()
    # robot.test_print()

# ------------------------------------------------------------------------------------------- #

    print("============ Press `Enter` to start main loop ...")
    raw_input() 

    # teleoperation
    robot.teleop_loop(FPS)

    # jacobian = robot.get_jacobian(robot.get_current_joint_value())
    # print(type(jacobian))
    # print(jacobian)

    # u, s, vh = svd(jacobian, full_matrices=True)
    # print((end - start), 1/(end - start))
    # print(u.shape, s.shape, vh.shape)
    # print(s)
    

# ------------------------------------------------------------------------------------------- #

    print("============ Press `Enter` to set init pose ...")
    raw_input() 
    robot.go_to_init_state()

# ------------------------------------------------------------------------------------------- #

    print("============ Code finished!")

# ------------------------------------------------------------------------------------------- #

  except rospy.ROSInterruptException:
    return
  except KeyboardInterrupt:
    return

if __name__ == '__main__':
  main()