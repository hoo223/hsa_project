#!/usr/bin/python
# -*- coding: utf8 -*- 

## standard library
from multiprocessing.dummy import current_process
import numpy as np
import time
import copy

## ros library
import rospy
import ros
from rospy.service import ServiceException
from std_msgs.msg import Float64MultiArray, String
from sensor_msgs.msg import JointState
from omni_msgs.msg import OmniFeedback


class Haptic(object):
  def __init__(self, verbose=False, prefix=""):

    # debugging
    self.verbose = verbose
    
    # namespace
    self.prefix = prefix
    
    # # param
    # self.with_gripper = rospy.get_param(self.prefix+'/with_gripper')
    # self.unity = rospy.get_param(self.prefix+'/unity')
    self.FBA_Force_msg = Float64MultiArray()  

    # haptic variables
    self.force_feedback = OmniFeedback()
    self.CurFBABeta = np.array([1.0,1.0,1.0,1.0,1.0,1.0])
    self.prev_pos = np.array([0.0,0.0,0.0,0.0,0.0,0.0])
    self.delay_time = 200 #milli second
    self.MinVisDamping = np.array([0.1,0.1,0.1,0.1,0.1,0.1])
    self.FBA_force = np.array([0.0,0.0,0.0,0.0,0.0,0.0])
  

    # subscriber
    self.haptic_joint_states_sub = rospy.Subscriber('/device1/joint_states', JointState, self.haptic_joint_states_callback)
    self.unity_force_sub = rospy.Subscriber('/unity_ur10_force_torque', Float64MultiArray, self.unity_force_callback)


    # publisher
    self.force_feedback_pub = rospy.Publisher("/device1/force_feedback", OmniFeedback, queue_size= 10)

      
  def haptic_joint_states_callback(self, data):
    self.haptic_joint_states = data.position


  
  def unity_force_callback(self, data):
    
    # FBA
    PreFBABeta = self.CurFBABeta
    cur_pos = np.asarray(self.haptic_joint_states)
    cur_force = np.asarray(data.data)
  
    diff_pos = cur_pos - self.prev_pos
    #print("Current Force :", cur_force)
    FBAGamma = 2*PreFBABeta * np.abs(diff_pos)*100000 + np.abs(cur_force)
    print("FBA Gamma :", FBAGamma[0], FBAGamma[1],FBAGamma[2])
    self.CurFBABeta = PreFBABeta * cur_force * cur_force / (FBAGamma * FBAGamma + 10e-7)
    #print(np.sum(np.abs(cur_force)))
    if np.sum(np.abs(cur_force))<0.1:
      self.CurFBABeta = self.MinVisDamping
      print("reset")
    for i in range(6):
      if self.CurFBABeta[i] > self.MinVisDamping[i]:
        self.CurFBABeta[i] = self.MinVisDamping[i]
    #print("Refined_Cur_FBA_Beta :", self.CurFBABeta)
    print("PreFBA Beta :", PreFBABeta[0], PreFBABeta[1], PreFBABeta[2])
    print("CurFBA Beta :", self.CurFBABeta[0], self.CurFBABeta[1], self.CurFBABeta[2])
    
    FBAForMax = FBAGamma * np.sqrt(self.CurFBABeta / (PreFBABeta +10e-7))
    FBAForMin = - FBAGamma * np.sqrt(self.CurFBABeta / (PreFBABeta + 10e-7))
    print("Max Force :", FBAForMax[0], FBAForMax[1], FBAForMax[2])
    
    # force reduction이 가장 큰 비율인 녀석의 index를 찾고, cur_force * force reduction rate을 곱해서 일정한 비율로 크기가 줄어들게 해서 방향 투명성을 유지하도록 하기
    for i in range(6):
      if cur_force[i] > FBAForMax[i]:
        self.FBA_force[i] = FBAForMax[i]
      elif cur_force[i] < FBAForMin[i]:
        self.FBA_force[i] = FBAForMin[i]
      else:
        self.FBA_force[i] = cur_force[i]
    print("Force reduction (%) :", (1-self.FBA_force/cur_force)[2]*100)
    self.FBA_Force_msg.data = [self.FBA_force[0],self.FBA_force[1],self.FBA_force[2],self.FBA_force[3],self.FBA_force[4],self.FBA_force[5]]
    self.force_feedback.force.x = self.FBA_Force_msg.data[0]
    self.force_feedback.force.y = self.FBA_Force_msg.data[1]
    self.force_feedback.force.z = self.FBA_Force_msg.data[2]
    print(self.FBA_Force_msg.data[2])
    self.prev_pos = cur_pos

  
  
def main():
  args = rospy.myargv()
  if len(args) > 1: 
    prefix = '/'+args[1]
  else:
    prefix = ''


  rospy.init_node("haptic_renderer", anonymous=True)
  h = Haptic(prefix=prefix)

  rate = rospy.Rate(1000)
  while not rospy.is_shutdown():
    # if rospy.get_param(prefix+'/teleop_state') == "start": # teleop is running
    #   # haptic rendering
    #   print(1)
    # else: # teleop is stopped
    #   print("No force")
    h.force_feedback_pub.publish(h.force_feedback)
      
    rate.sleep()


if __name__ == '__main__':
  main()