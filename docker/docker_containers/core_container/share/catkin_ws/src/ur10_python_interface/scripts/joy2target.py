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
import tf
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from std_msgs.msg import Float64MultiArray, String
from std_srvs.srv import Trigger, TriggerResponse
from sensor_msgs.msg import JointState
from geometry_msgs.msg import PoseStamped, Quaternion, Pose
from omni_msgs.msg import OmniButtonEvent
from robotiq_2f_gripper_control.msg import Robotiq2FGripper_robot_input  as inputMsg
from robotiq_2f_gripper_control.msg import Robotiq2FGripper_robot_output as outputMsg
#from cv_bridge import CvBridge

## custom library
from move_group_python_interface import MoveGroupPythonInteface

class Joy2Target(object):
  def __init__(self, verbose=False, prefix=""):

    # debugging
    self.verbose = verbose
    
    # namespace
    self.prefix = prefix

    # teleoperation variable
    self.pre_button = None
    self.teleop_state = "stop"
    self.joy_command = np.zeros(5)
    self.speed_gain = 0.00024 # for input scale
    self.speed_level = 3 # 로봇 움직임 속도 - 1~10 단계

    # random agent
    self.random_action = np.zeros(6)
    self.delay_step = 0

    self.xyzw_array = lambda o: np.array([o.x, o.y, o.z, o.w])

    # haptic variables
    self.grey_button_state = 0
    self.white_button_state = 0
    self.haptic_move_state = False
    self.gripper_closed = False
    self.start_target_pos = [0, 0, 0]
    self.haptic_scale = 2 # translation scale factor

    # subscriber
    self.joy_sub = rospy.Subscriber('joy_command', Float64MultiArray, self.joy_command_callback)
    self.teleop_state_sub = rospy.Subscriber('/teleop_state', String, self.teleop_state_callback)
    self.current_joint_sub = rospy.Subscriber('/joint_states', JointState, self.current_joint_callback)
    self.haptic_pose_sub = rospy.Subscriber('/phantom/pose', PoseStamped, self.haptic_pose_callback)
    self.haptic_button_sub = rospy.Subscriber('/phantom/button', OmniButtonEvent, self.haptic_button_callback)
    self.agent_action_sub = rospy.Subscriber('agent_action', Float64MultiArray, self.agent_action_callback)
    self.gripper_status_sub = rospy.Subscriber("Robotiq2FGripperRobotInput", inputMsg, self.gripper_status_callback)

    # publisher
    self.target_pose_pub = rospy.Publisher("target_pose", Pose, queue_size= 10)
    self.haptic_error_pub = rospy.Publisher("haptic_error", Float64MultiArray, queue_size=10)
    self.haptic_rpy_pub = rospy.Publisher("haptic_rpy", Float64MultiArray, queue_size=10)
    self.gripper_action_pub = rospy.Publisher('Robotiq2FGripperRobotOutput', outputMsg, queue_size=10)
    
    # gripper
    self.gripper_command = outputMsg()
    self.gripper_command.rACT = 1
    self.gripper_command.rGTO = 1
    self.gripper_command.rSP  = 255
    self.gripper_command.rFR  = 150
    self.gripper_action_pub.publish(self.gripper_command)

    # tf listener
    self.listener = tf.TransformListener()
    
    # UR10 initial pose
    #self.init_pose = [0.17488465, 0.53148766, 0.49063472, 1.63007136, 1.52047576, 3.0807627]
    self.init_pose = [0.17480582, 0.50746106, 0.69538257, 0.09267109, 0.00379392, 1.59158403]

    # input device에 의해 조작되는 end-effector target pose
    self.target_pose = copy.deepcopy(self.init_pose)

    # reset target service
    self.reset_target_service = rospy.Service('reset_target_pose', Trigger, self.reset_target)

  def input_conversion(self, random_agent=False):
    # get input
    if random_agent: # random action model
      # For smoothing noisy action
      if self.delay_step > 200:
        self.random_action = 2*(np.random.rand(6)-0.5)
        self.delay_step = 0
      self.delay_step += 1
      # random action to input mapping
      x_input = -self.random_action[0]
      y_input = self.random_action[1]
      z_input = self.random_action[2]
      roll_input = self.random_action[3]
      pitch_input = self.random_action[4]
      yaw_input = -self.random_action[5]
    else: # human teleoperation
      # joystick action to input mapping
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

  # '/phantom/pose' topic 수신 시 콜백 - 햅틱 장치의 pose를 end-effector target pose로 변환
  def haptic_pose_callback(self, data):
    # 햅틱 장치 pose 얻기
    self.haptic_pose = data.pose
    # Orientation 정보 quaternion -> Euler angle 변환
    self.haptic_rpy = euler_from_quaternion(self.xyzw_array(self.haptic_pose.orientation))
    if self.verbose:
      rpy = Float64MultiArray()
      rpy.data = self.haptic_rpy
      self.haptic_rpy_pub.publish(rpy)
    
    # target pose의 Euler angle로 mapping 
    self.target_pose[3] = -self.haptic_rpy[2] - np.pi/2
    self.target_pose[4] = -self.haptic_rpy[1]
    self.target_pose[5] = -self.haptic_rpy[0] + np.pi/2

    # haptic move state = 버튼 두 개를 누르고 있는 동안에만 
    if self.haptic_move_state == True:
      x_error = self.haptic_pose.position.x - self.start_haptic_pose.position.x
      y_error = self.haptic_pose.position.y - self.start_haptic_pose.position.y
      z_error = self.haptic_pose.position.z - self.start_haptic_pose.position.z
      if self.verbose: # 확인용
        self.haptic_error = [x_error, y_error, z_error]
        temp = Float64MultiArray()
        temp.data = self.haptic_error
        self.haptic_error_pub.publish(temp)

      self.target_pose[0] = self.start_target_pos[0] + self.haptic_scale*x_error
      self.target_pose[1] = self.start_target_pos[1] + self.haptic_scale*y_error
      self.target_pose[2] = self.start_target_pos[2] + self.haptic_scale*z_error
      
  # '/phantom/button' topic 수신 시 콜백 - 햅틱 장치 버튼에 관한 동작 수행
  def haptic_button_callback(self, data):
    # white 버튼을 누르면 haptic move state 시작하고, 누르고 있는 동안은 유지 
    if (self.haptic_move_state == False) and (data.white_button == 1):
      # 시작시 햅틱 장치의 pose 저장
      self.start_haptic_pose = self.haptic_pose
      self.start_target_pos = [self.target_pose[0], self.target_pose[1], self.target_pose[2]]
      self.haptic_move_state = True 
    elif (self.haptic_move_state == True) and (data.white_button == 0): # white 버튼을 안누르고 있으면 haptic move state 해제
      self.haptic_move_state = False

    # 회색 버튼을 누르면 그리퍼 동작 (잡기 or 놓기)
    if (self.gripper_closed == False) and (data.grey_button == 1) and (data.white_button == 0): # 그리퍼가 열려있는 상태에서 회색 버튼을 누르면 -> 잡기
      self.gripper_command.rPR = 255
      #self.gripper_action_pub.publish(self.gripper_command)
      self.gripper_closed = True
    elif (self.gripper_closed == True) and (data.grey_button == 1) and (data.white_button == 0): # 그리퍼가 닫혀있는 상태에서 회색 버튼을 누르면 -> 놓기
      self.gripper_command.rPR = 0
      #self.gripper_action_pub.publish(self.gripper_command)
      self.gripper_closed = False
    
    #print(self.haptic_move_state)

  def agent_action_callback(self, data):
    self.agent_action = data.data
    pass
  
  def gripper_status_callback(self, status):
    self.gripper_position = status.gPO
    
    
def main():
  args = rospy.myargv()
  if len(args) > 1: 
    prefix = '/'+args[1]
  else:
    prefix = ''

  rospy.init_node("joy2target_converter", anonymous=True)
  j2t = Joy2Target(prefix=prefix)
  rate = rospy.Rate(250)
  while not rospy.is_shutdown():
    if rospy.get_param(prefix+'/teleop_state') == "start":
      target_pose = j2t.input_conversion(random_agent=True)
      j2t.gripper_action_pub.publish(j2t.gripper_command)
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