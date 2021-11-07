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
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from std_msgs.msg import Float64MultiArray, String
from std_srvs.srv import Trigger, TriggerResponse, TriggerRequest
from sensor_msgs.msg import JointState
from geometry_msgs.msg import PoseStamped, Quaternion, Pose
from omni_msgs.msg import OmniButtonEvent
from robotiq_2f_gripper_control.msg import Robotiq2FGripper_robot_input  as inputMsg
from robotiq_2f_gripper_control.msg import Robotiq2FGripper_robot_output as outputMsg
from ur10_python_interface.srv import SolveIk
#from cv_bridge import CvBridge

## custom library
from move_group_python_interface import MoveGroupPythonInteface

class Joy2Target(object):
  def __init__(self, verbose=False, prefix="", random_agent=False, env=False, rsa=False):

    # debugging
    self.verbose = verbose
    
    # namespace
    self.prefix = prefix

    # agent type
    self.random_agent = random_agent

    # with RL env
    self.env = env
    self.rsa = rsa
    
    # gripper
    self.with_gripper = rospy.get_param('with_gripper')

    # teleoperation variable
    self.pre_button = None
    self.teleop_state = "stop"
    self.joy_command = np.zeros(7)
    self.speed_gain = 0.00024 # for input scale
    self.speed_level = 3 # 로봇 움직임 속도 - 1~10 단계

    # random agent
    self.random_action = np.zeros(6)
    self.delay_step = 0
    self.action_mask = [0,1,0,0,0,0] # x,y,z,roll,pitch,yaw

    self.xyzw_array = lambda o: np.array([o.x, o.y, o.z, o.w])

    # haptic variables
    self.grey_button_state = 0
    self.white_button_state = 0
    self.haptic_move_state = False
    self.gripper_closed = False
    self.start_target_pos = [0, 0, 0]
    self.haptic_scale_pos = 2 # translation scale factor
    self.haptic_scale_ori = 1 # translation scale factor

    # subscriber
    self.joy_command_sub = rospy.Subscriber('joy_command', Float64MultiArray, self.joy_command_callback)
    self.env_command_sub = rospy.Subscriber('env_command', Float64MultiArray, self.env_command_callback)
    self.teleop_state_sub = rospy.Subscriber('/teleop_state', String, self.teleop_state_callback)
    if self.with_gripper:
      self.current_joint_sub = rospy.Subscriber('/joint_states', JointState, self.current_joint_with_gripper_callback)
    else:
      self.current_joint_sub = rospy.Subscriber('/joint_states', JointState, self.current_joint_callback)
    self.haptic_pose_sub = rospy.Subscriber('/device1/pose', PoseStamped, self.haptic_pose_callback)
    self.haptic_joint_states_sub = rospy.Subscriber('/device1/joint_states', JointState, self.haptic_joint_states_callback)
    self.haptic_button_sub = rospy.Subscriber('/device1/button', OmniButtonEvent, self.haptic_button_callback)
    self.agent_action_sub = rospy.Subscriber('agent_action', Float64MultiArray, self.agent_action_callback)
    self.gripper_status_sub = rospy.Subscriber("Robotiq2FGripperRobotInput", inputMsg, self.gripper_status_callback)

    # publisher
    self.target_pose_pub = rospy.Publisher("target_pose", Pose, queue_size= 10)
    self.haptic_error_pub = rospy.Publisher("haptic_error", Float64MultiArray, queue_size=10)
    self.haptic_rpy_pub = rospy.Publisher("haptic_rpy", Float64MultiArray, queue_size=10)
    self.gripper_action_pub = rospy.Publisher('Robotiq2FGripperRobotOutput', outputMsg, queue_size=10)
    self.ik_result_pub = rospy.Publisher("ik_result", Float64MultiArray, queue_size=10)
    
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
    #self.init_pose = [0.17480582, 0.50746106, 0.69538257, 0.09267109, 0.00379392, 1.59158403]
    self.init_pose = [1.80319956e-01, 5.34257144e-01, 4.97614467e-01, -3.11453126e+00,  2.68726833e-03, -1.19986748e-01]
    self.init_joint_states = [-1.601372543965475, -1.3494799772845667, -2.0361130873309534, -1.3006231672108264, 1.5698880420405317, 0.09116100519895554]
    self.current_joints = copy.deepcopy(self.init_joint_states)

    # input device에 의해 조작되는 end-effector target pose
    self.target_pose = copy.deepcopy(self.init_pose)
    
    self.ik_result = Float64MultiArray()
    self.ik_result.data = copy.deepcopy(self.init_joint_states)
    self.wrist_1_joint = self.init_joint_states[3]
    self.wrist_2_joint = self.init_joint_states[4]
    self.wrist_3_joint = self.init_joint_states[5]

    # reset target service
    self.reset_target_service = rospy.Service('reset_target_pose', Trigger, self.reset_target)

    command = Float64MultiArray()
    command.data.append(0) # x
    command.data.append(0) # y
    command.data.append(0) # z
    command.data.append(0) # roll
    command.data.append(0) # pitch
    command.data.append(0) # yaw
    command.data.append(-1.0) # button
    self.env_command = command.data

  def input_conversion(self):
    # get input
    button = int(self.joy_command[6])

    if self.rsa: # rsa random agent
      command = self.env_command
      x_input = -command[0] * self.action_mask[0]
      y_input = command[1] * self.action_mask[1]
      z_input = command[2] * self.action_mask[2]
      roll_input = command[3] * self.action_mask[3]
      pitch_input = command[4] * self.action_mask[4]
      yaw_input = -command[5]  * self.action_mask[5]
    else:
      command = self.joy_command
      if self.random_agent: # random action model
        # For smoothing noisy action
        if self.delay_step > 200:
          self.random_action = 2*(np.random.rand(6)-0.5)
          self.delay_step = 0
        self.delay_step += 1
        # random action to input mapping
        x_input = 0#-self.random_action[0]
        y_input = self.random_action[1]
        z_input = 0#self.random_action[2]
        roll_input = 0#self.random_action[3]
        pitch_input = 0#self.random_action[4]
        yaw_input = 0#-self.random_action[5]
      else: # human teleoperation
        # joystick action to input mapping
        x_input = -command[0]
        y_input = command[1]
        z_input = command[2]
        roll_input = pitch_input = 0
        if button == 1:
          roll_input = 1
        elif button == 2:
          roll_input = -1
        if button == 0:
          pitch_input = 1
        elif button == 3:
          pitch_input = -1
        yaw_input = -command[5]         

    # change speed
    if button != self.pre_button: # restrict the continuous change
      if button == 5:
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
    self.target_pose[5] += input_scale*yaw_input
    
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
    self.target_pose = self.init_pose
    res = TriggerResponse()
    res.message = "target pose reset"
    res.success = True
    return res

  def joy_command_callback(self, data):
    self.joy_command = data.data

  def env_command_callback(self, data):
    self.env_command = data.data

  def teleop_state_callback(self, data):
    self.teleop_state = data.data

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

  # '/phantom/pose' topic 수신 시 콜백 - 햅틱 장치의 pose를 end-effector target pose로 변환
  def haptic_pose_callback(self, data):
    # 햅틱 장치 pose 얻기
    self.haptic_pose = data.pose
    
    # haptic move state = 버튼 두 개를 누르고 있는 동안에만 
    if self.haptic_move_state == True:
      x_error = self.haptic_pose.position.x - self.start_haptic_pose.position.x
      y_error = self.haptic_pose.position.y - self.start_haptic_pose.position.y
      z_error = self.haptic_pose.position.z - self.start_haptic_pose.position.z
      # if self.verbose: # 확인용
      #   self.haptic_error = [x_error, y_error, z_error]
      #   temp = Float64MultiArray()
      #   temp.data = self.haptic_error
      #   self.haptic_error_pub.publish(temp)
      self.target_pose[0] = self.start_target_pos[0] + self.haptic_scale_pos*x_error
      self.target_pose[1] = self.start_target_pos[1] + self.haptic_scale_pos*y_error
      self.target_pose[2] = self.start_target_pos[2] + self.haptic_scale_pos*z_error
      
  def haptic_joint_states_callback(self, data):
    self.haptic_joint_states = data.position
    self.wrist_1_joint = -1.3006231672108264 + self.haptic_joint_states[4] - (-2.418408261237553) + 1
    self.wrist_2_joint = 1.5698880420405317 - (self.haptic_joint_states[3] - (3.1312592896916946))
    self.wrist_3_joint = 0.09116100519895554 - (self.haptic_joint_states[5] - (-3.061161795752593))     
  
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

  def agent_action_callback(self, data):
    self.agent_action = data.data
    pass
  
  def gripper_status_callback(self, status):
    self.gripper_position = status.gPO
    
  def ik_solver(self, target_pose):
    rospy.wait_for_service('solve_ik')
    try:
      solve_ik = rospy.ServiceProxy('solve_ik', SolveIk)
      res = solve_ik(target_pose)
      return res
    except rospy.ServiceException as e:
      print("Service call failed: %s"%e)

  def reset_pose(self):
    rospy.wait_for_service(self.prefix+'/reset_pose')
    reset_pose_service = rospy.ServiceProxy(self.prefix+'/reset_pose', Trigger)
    req = TriggerRequest()
    res = reset_pose_service(req)
    return res
    
def main():
  args = rospy.myargv()
  if len(args) > 1: 
    prefix = '/'+args[1]
  else:
    prefix = ''

  rospy.init_node("joy2target_converter", anonymous=True)
  j2t = Joy2Target(prefix=prefix, random_agent=False, env=False, rsa=False)
  rate = rospy.Rate(250)
  while not rospy.is_shutdown():
    if rospy.get_param(prefix+'/teleop_state') == "start": # teleop is running
      # calculate target pose 
      target_pose = j2t.input_conversion()
      j2t.target_pose_pub.publish(target_pose)
      print("target_pose calculated")
      # solve ik
      result = j2t.ik_solver(target_pose)
      if result.success:
        # first 3 joints 
        j2t.ik_result.data = [result.ik_result.data[0], result.ik_result.data[1], result.ik_result.data[2], j2t.wrist_1_joint, j2t.wrist_2_joint, j2t.wrist_3_joint]
        j2t.ik_result_pub.publish(j2t.ik_result)
        j2t.gripper_action_pub.publish(j2t.gripper_command)
      else:
        print("ik failed")
        rospy.set_param(prefix+'/teleop_state', "stop")
        if not j2t.env: # rl 환경과 연동하지 않을 때만
          j2t.reset_pose()
    else: # teleop is stopped
      j2t.target_pose = copy.deepcopy(j2t.init_pose)
      j2t.ik_result.data = copy.deepcopy(j2t.init_joint_states)
      j2t.wrist_1_joint = j2t.init_joint_states[3]
      j2t.wrist_2_joint = j2t.init_joint_states[4]
      j2t.wrist_3_joint = j2t.init_joint_states[5]
      print("target_pose initialized")
      
    rate.sleep()


if __name__ == '__main__':
  main()