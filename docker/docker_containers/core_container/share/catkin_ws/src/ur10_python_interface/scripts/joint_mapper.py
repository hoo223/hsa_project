#!/usr/bin/python
# -*- coding: utf8 -*- 


## standard library
import numpy as np
import time
import os
import sys
import matplotlib.pyplot as plt
import copy

## ros library
import rospy
import ros
from rospy.service import ServiceException
import tf
from tf.transformations import euler_from_quaternion, quaternion_from_euler, quaternion_multiply
from std_msgs.msg import Float64MultiArray, String, Header
from std_srvs.srv import Trigger, TriggerResponse, TriggerRequest
from sensor_msgs.msg import JointState
from geometry_msgs.msg import PoseStamped, Quaternion, Pose
from control_msgs.msg import GripperCommandActionGoal
from omni_msgs.msg import OmniButtonEvent
from robotiq_2f_gripper_control.msg import Robotiq2FGripper_robot_input  as inputMsg
from robotiq_2f_gripper_control.msg import Robotiq2FGripper_robot_output as outputMsg
from ur10_python_interface.srv import SolveIk
from moveit_msgs.srv import GetPositionFK
from moveit_msgs.srv import GetPositionFKRequest
from moveit_msgs.srv import GetPositionFKResponse
from moveit_msgs.msg import RobotState

#from cv_bridge import CvBridge

## custom library
from move_group_python_interface import MoveGroupPythonInteface

class JointMapper(object):
  def __init__(self, prefix=""):
    
    # namespace
    self.prefix = prefix
    
    # param
    self.with_gripper = rospy.get_param(self.prefix+'/with_gripper', False)
    self.unity = rospy.get_param(self.prefix+'/unity', True)

    # tf listener
    self.listener = tf.TransformListener()
    
    # publisher
    self.ik_result_pub = rospy.Publisher(prefix+"/ik_result", Float64MultiArray, queue_size=10)
    
    # subscriber
    self.haptic_joint_states_sub = rospy.Subscriber('/device1/joint_states', JointState, self.haptic_joint_states_callback)
    self.unity_ur10_joint_states_sub = rospy.Subscriber('/unity_un10_joint_states', JointState, self.haptic_joint_states_callback)
    if self.with_gripper:
      self.current_joint_sub = rospy.Subscriber('/joint_states', JointState, self.current_joint_with_gripper_callback)
    else:
      self.current_joint_sub = rospy.Subscriber('/joint_states', JointState, self.current_joint_callback)

    # initialization
    self.current_joints = [-1.6015353202819824, -1.349576473236084, -2.036376476287842, -1.3006303310394287, 1.5699745416641235, 0.09120222181081772]
    self.unity_ur10_joint_state = [-1.6015353202819824, -1.349576473236084, -2.036376476287842, -1.3006303310394287, 1.5699745416641235, 0.09120222181081772]
    
    # mapping parameters
    self.joint1_offset = -0.13939642906188965 + (-1.602583646774292)
    self.joint2_offset = -1.7740997076034546 + (-1.5259363651275635)
    self.joint3_offset = -(-0.48358941078186035) + (-2.5072927474975586)

    # command = Float64MultiArray()
    # command.data.append(0) # x
    # command.data.append(0) # y
    # command.data.append(0) # z
    # command.data.append(0) # roll
    # command.data.append(0) # pitch
    # command.data.append(0) # yaw
    # command.data.append(-1.0) # button
    # self.env_command = command.data
    
  def haptic_joint_states_callback(self, data):
    self.haptic_joint_states = data.position
    
  def current_joint_callback(self, data):
    self.unity_ur10_joint_state = data.position
    
  def current_joint_callback(self, data):
    current_joints = list(data.position)
    # gazebo에서 나온 joint states 순서가 바뀌어 있음
    # [elbow_joint, shoulder_lift_joint, shoulder_pan_joint, wrist_1_joint, wrist_2_joint, wrist_3_joint] - 2 1 0 3 4 5 
    self.current_joints[0] = current_joints[2]
    self.current_joints[1] = current_joints[1]
    self.current_joints[2] = current_joints[0]
    self.current_joints[3] = current_joints[3]
    self.current_joints[4] = current_joints[4]
    self.current_joints[5] = current_joints[5]
    
  def current_joint_with_gripper_callback(self, data):  
    current_joints = list(data.position)
    # gazebo에서 나온 joint states 순서가 바뀌어 있음
    # [elbow_joint, robotiq_85_left_knuckle_joint, shoulder_lift_joint, shoulder_pan_joint, wrist_1_joint, wrist_2_joint, wrist_3_joint] - 3 2 0 4 5 6 
    self.current_joints[0] = current_joints[3]
    self.current_joints[1] = current_joints[2]
    self.current_joints[2] = current_joints[0]
    self.current_joints[3] = current_joints[4]
    self.current_joints[4] = current_joints[5]
    self.current_joints[5] = current_joints[6]
    
  
  def joint_mapping(self):
    self.joint1 = self.unity_ur10_joint_state[0] #self.haptic_joint_states[0] + self.joint1_offset
    self.joint2 = self.unity_ur10_joint_state[1] #self.haptic_joint_states[1] + self.joint2_offset
    self.joint3 = self.unity_ur10_joint_state[2] #self.haptic_joint_states[2] + self.joint3_offset
    self.joint4 = self.unity_ur10_joint_state[3]#- (self.haptic_joint_states[4] + 3.160661785053559) + (-1.3006689548492432)
    self.joint5 = -(self.haptic_joint_states[3] + (-1.3006303310394287)) + 1.5699745416641235
    self.joint6 = self.unity_ur10_joint_state[5]#self.haptic_joint_states[5] 
    mapping_result = Float64MultiArray()
    mapping_result.data = [self.joint1, self.joint2, self.joint3, self.joint4, self.joint5, self.joint6]
    self.ik_result_pub.publish(mapping_result)
  
  def no_mapping(self):
    mapping_result = Float64MultiArray()
    mapping_result.data = self.current_joints
    self.ik_result_pub.publish(mapping_result)
    
def main():
  args = rospy.myargv()
  if len(args) > 1: 
    prefix = '/'+args[1]
  else:
    prefix = ''
  
  rsa_flag = rospy.get_param('rsa', False)
  rand_agent = rospy.get_param('rand_agent', False) 

  rospy.init_node("joint_mapper", anonymous=True)
  jm = JointMapper(prefix=prefix)
  rate = rospy.Rate(250)
  while not rospy.is_shutdown():
    if rospy.get_param(prefix+'/teleop_state') == "start": # teleop is running
      jm.joint_mapping()
      print("joint_mapping")
    else: # teleop is stopped
      jm.no_mapping()
      print("no_mapping")
      
    rate.sleep()


if __name__ == '__main__':
  main()