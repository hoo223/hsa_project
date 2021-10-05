#!/usr/bin/python
# -*- coding: utf8 -*- 

## standard library
import numpy as np
import roslaunch
import time
import os
import sys

## ros library
import rospy
import tf
from sensor_msgs.msg import JointState
from visualization_msgs.msg import Marker
from geometry_msgs.msg import Point, Vector3
from ur10_python_interface.msg import Ellipsoid3


class ellipsoid_visualizer(object):
  def __init__(self):

    self.scale = Vector3(0.03,0.05,0.1)
    self.tip_position = [0, 0, 0]

    ## node init
    rospy.init_node("ellipsoid_visualizer", anonymous=True)

    ## publisher
    self.axis1_pub = rospy.Publisher('axis1', Marker)
    self.axis2_pub = rospy.Publisher('axis2', Marker)
    self.axis3_pub = rospy.Publisher('axis3', Marker)
    self.axis1_r_pub = rospy.Publisher('axis1_r', Marker)
    self.axis2_r_pub = rospy.Publisher('axis2_r', Marker)
    self.axis3_r_pub = rospy.Publisher('axis3_r', Marker)

    ## subscriber
    state_subscriber = rospy.Subscriber("/joint_states", JointState, callback=self.update_state_callback, queue_size=1)
    state_subscriber = rospy.Subscriber("/ellipsoid", Ellipsoid3, self.update_ellipsoid_callback)

    ## tf listener
    self.base = "base_link"
    self.end = "ee_link" #"wrist_3_link"
    now = rospy.Time.now()
    self.tf_listener = tf.TransformListener()
    self.tf_listener.waitForTransform(self.base, self.end, now, rospy.Duration(5.0));


  # https://github.com/team-vigir/vigir_rviz/blob/master/src/test/arrow_marker_test.py
  def make_arrow_points_marker(self, scale, tail, tip, idnum):
      # make a visualization marker array for the occupancy grid
      m = Marker()
      m.action = Marker.ADD
      m.header.frame_id = '/base_link'
      m.header.stamp = rospy.Time.now()
      m.ns = 'points_arrows'
      m.id = idnum
      m.type = Marker.ARROW
      m.pose.orientation.y = 0
      m.pose.orientation.w = 1
      m.scale = scale
      m.color.r = 0.2
      m.color.g = 0.5
      m.color.b = 1.0
      m.color.a = 0.3

      m.points = [ tail, tip ]
      return m


  def update_ellipsoid_callback(self, data):
    #print(data)
    s = data.s.data
    u1 = data.u1.data
    u2 = data.u2.data
    u3 = data.u3.data
    #print(self.tip_position)
    

    x0 = self.tip_position[0]
    y0 = self.tip_position[1]
    z0 = self.tip_position[2]

    axis1_x1 = x0+s[0]*u1[0]
    axis1_y1 = y0+s[0]*u1[1]
    axis1_z1 = z0+s[0]*u1[2]
    axis2_x1 = x0+s[1]*u2[0] 
    axis2_y1 = y0+s[1]*u2[1]
    axis2_z1 = z0+s[1]*u2[2]
    axis3_x1 = x0+s[2]*u3[0]
    axis3_y1 = y0+s[2]*u3[1]
    axis3_z1 = z0+s[2]*u3[2]

    axis1_x1_r = x0-s[0]*u1[0]
    axis1_y1_r = y0-s[0]*u1[1]
    axis1_z1_r = z0-s[0]*u1[2]
    axis2_x1_r = x0-s[1]*u2[0] 
    axis2_y1_r = y0-s[1]*u2[1]
    axis2_z1_r = z0-s[1]*u2[2]
    axis3_x1_r = x0-s[2]*u3[0]
    axis3_y1_r = y0-s[2]*u3[1]
    axis3_z1_r = z0-s[2]*u3[2]

    # u1_mag = self.get_vector_mag(u1)
    # u2_mag = self.get_vector_mag(u2)
    # u3_mag = self.get_vector_mag(u3)
    # print(u1_mag, u2_mag, u3_mag)
    
    axis1 = self.make_arrow_points_marker(self.scale, Point(x0,y0,z0), Point(axis1_x1, axis1_y1, axis1_z1), 1)
    axis2 = self.make_arrow_points_marker(self.scale, Point(x0,y0,z0), Point(axis2_x1, axis2_y1, axis2_z1), 2)
    axis3 = self.make_arrow_points_marker(self.scale, Point(x0,y0,z0), Point(axis3_x1, axis3_y1, axis3_z1), 3)
    axis1_r = self.make_arrow_points_marker(self.scale, Point(x0,y0,z0), Point(axis1_x1_r, axis1_y1_r, axis1_z1_r), 1)
    axis2_r = self.make_arrow_points_marker(self.scale, Point(x0,y0,z0), Point(axis2_x1_r, axis2_y1_r, axis2_z1_r), 2)
    axis3_r = self.make_arrow_points_marker(self.scale, Point(x0,y0,z0), Point(axis3_x1_r, axis3_y1_r, axis3_z1_r), 3)
    self.axis1_pub.publish(axis1)
    self.axis2_pub.publish(axis2) 
    self.axis3_pub.publish(axis3) 
    self.axis1_r_pub.publish(axis1_r)
    self.axis2_r_pub.publish(axis2_r) 
    self.axis3_r_pub.publish(axis3_r) 

  def update_state_callback(self, data):
    #print("update state")
    self._state = data
    now = rospy.Time.now()
    #print(now, self.tf_listener)
    self.tf_listener.waitForTransform(self.base, self.end, now, rospy.Duration(5.0));
    position, quaternion = self.tf_listener.lookupTransform(self.base, self.end, now)
    self.tip_position = position


  def get_vector_mag(self, vector):
    return np.linalg.norm(np.array(vector))

def main():
  ellipsoid_visualizer()
  rospy.spin()


if __name__ == '__main__':
  main()