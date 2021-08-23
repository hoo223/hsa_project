import roslib; roslib.load_manifest('urdfdom_py')
import rospy
import sympy
import time
from copy import deepcopy
from urdf_parser_py.urdf import URDF
from tf.transformations import *
import sys, getopt
import textwrap
import rospkg
import numpy as np
from sympy import *
import matplotlib.pyplot as plt
       
joint_pose  = np.load('/root/catkin_ws/src/ur10_python_interface/scripts/data/joint_space_pose'+str(1)+'_init'+str(1)+'.npy')
joint_vel   = np.load('/root/catkin_ws/src/ur10_python_interface/scripts/data/joint_space_vel'+str(1)+'_init'+str(1)+'.npy')
actual_pose = np.load('/root/catkin_ws/src/ur10_python_interface/scripts/data/actual_pose'+str(1)+'_init'+str(1)+'.npy')
actual_vel  = np.load('/root/catkin_ws/src/ur10_python_interface/scripts/data/actual_vel'+str(1)+'_init'+str(1)+'.npy')

plt.plot(joint_pose[:,0],'r')
plt.plot(actual_pose[2:,2],'b')
plt.show()
