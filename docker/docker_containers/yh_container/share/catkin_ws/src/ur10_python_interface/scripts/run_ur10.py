#!/usr/bin/env python3

import matplotlib.pyplot as plt
import rospy
from trajectory_msgs.msg import JointTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint
import numpy as np
import sys
print(sys.executable) # python version
import copy
from math import *
import pygame
import time
from numpy.linalg import inv, det
import moveit_commander
from moveit_commander.conversions import pose_to_list
import moveit_msgs.msg
from tf.transformations import *
from std_msgs.msg import String, Float64MultiArray
from geometry_msgs.msg import PoseStamped, Quaternion

from controller_manager_msgs.srv import SwitchControllerRequest, SwitchController
from sensor_msgs.msg import JointState
from get_ik import GetIK
from datetime import datetime
from move_group_python_interface import MoveGroupPythonInterface

pygame.init()
FPS = 50 # frames per second setting
fpsClock = pygame.time.Clock()


haptic_state = Float64MultiArray()



def haptic_state_callback(data):
    haptic_state.data = data.data

def listener_haptic():
    sub_target = rospy.Subscriber('/human_action', Float64MultiArray, haptic_state_callback)


def pub_command(pub):
    pub.publish(haptic_state)
    rate = rospy.Rate(250)
    rate.sleep()

def main():
    args = rospy.myargv()
    listener_haptic
    upPythonInterface(base_controller=base_controller, velocity_controller=velocity_controller)
    #pub = rospy.Publisher('/scaled_pos_joint_traj_controller/command',JointTrajectory, queue_size=10)
    pub = rospy.Publisher('/joint_group_vel_controller/command',Float64MultiArray,queue_size=10) 

    while(1):
        pub_command(pub)


    
if __name__ == '__main__':
    main()
