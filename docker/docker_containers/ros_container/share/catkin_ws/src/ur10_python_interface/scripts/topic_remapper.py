#!/usr/bin/python3
# -*- coding: utf8 -*- 


## standard library
import numpy as np
import time
import os
import sys

## ros library
import rospy
import ros
from std_msgs.msg import Float64MultiArray, String
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from control_msgs.msg import FollowJointTrajectoryActionGoal, FollowJointTrajectoryActionFeedback, FollowJointTrajectoryActionResult

class TopicRemapper(object):
  def __init__(self, verbose=True):
    
    # subscriber
    #self.velocity_command_sub = rospy.Subscriber('/joint_group_velocity_controller/command', Float64MultiArray, self.velocity_command_callback)
    self.joint_traj_command_sub = rospy.Subscriber('/arm_controller/command', JointTrajectory, self.joint_traj_command_callback)
    self.joint_traj_command_sub = rospy.Subscriber('/arm_controller/follow_joint_trajectory/goal', FollowJointTrajectoryActionGoal, self.follow_joint_traj_goal_callback)
    #self.joint_traj_command_sub = rospy.Subscriber('/arm_controller/follow_joint_trajectory/feedback', FollowJointTrajectoryActionFeedback, self.follow_joint_traj_feedback_callback)
    #self.joint_traj_command_sub = rospy.Subscriber('/arm_controller/follow_joint_trajectory/result', FollowJointTrajectoryActionResult, self.follow_joint_traj_result_callback)

    # publisher
    # self.unity_velocity_command_pub = rospy.Publisher("/unity/joint_group_velocity_controller/command", Float64MultiArray, queue_size= 10)
    self.unity_joint_traj_command_pub = rospy.Publisher("/unity/arm_controller/command", JointTrajectory, queue_size= 10)
    self.unity_follow_joint_traj_goal_pub = rospy.Publisher("/unity/arm_controller/follow_joint_trajectory/goal", FollowJointTrajectoryActionGoal, queue_size= 10)
    #self.unity_follow_joint_traj_feedback_pub = rospy.Publisher("/unity/arm_controller/follow_joint_trajectory/feedback", FollowJointTrajectoryActionFeedback, queue_size= 10)
    #self.unity_follow_joint_traj_result_pub = rospy.Publisher("/unity/arm_controller/follow_joint_trajectory/result", FollowJointTrajectoryActionResult, queue_size= 10)

  def velocity_command_callback(self, data):
    self.unity_velocity_command_pub.publish(data)

  def joint_traj_command_callback(self, data):
    temp = JointTrajectory()
    temp.header = data.header
    temp.joint_names = data.joint_names
    point = JointTrajectoryPoint()
    point.positions.append(data.points[0].positions[2])
    point.positions.append(data.points[0].positions[1])
    point.positions.append(data.points[0].positions[0])
    point.positions.append(data.points[0].positions[3])
    point.positions.append(data.points[0].positions[4])
    point.positions.append(data.points[0].positions[5])
    point.time_from_start = rospy.Duration(1)
    temp.points.append(point)
    self.unity_joint_traj_command_pub.publish(temp)

  def follow_joint_traj_goal_callback(self, data):
    self.unity_follow_joint_traj_goal_pub.publish(data)

  def follow_joint_traj_feedback_callback(self, data):
    self.unity_follow_joint_traj_feedback_pub.publish(data)

  def follow_joint_traj_result_callback(self, data):
    self.unity_follow_joint_traj_result_pub.publish(data)
    
def main():
  rospy.init_node("topic_remapper", anonymous=True)
  rospy.init_node("topic_remapper", anonymous=True)
  tr = TopicRemapper()
  rospy.spin()
  
if __name__ == '__main__':
  main()