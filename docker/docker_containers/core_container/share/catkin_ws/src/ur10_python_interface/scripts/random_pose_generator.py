#!/usr/bin/python
# -*- coding: utf8 -*- 

import rospy
import numpy as np
from std_srvs.srv import Trigger, TriggerResponse, TriggerRequest
from ur10_python_interface.srv import SolveIk
from geometry_msgs.msg import PoseStamped, Quaternion, Pose
from tf.transformations import euler_from_quaternion, quaternion_from_euler

def ik_solver(target_pose):
    rospy.wait_for_service('solve_ik')
    try:
        solve_ik = rospy.ServiceProxy('solve_ik', SolveIk)
        res = solve_ik(target_pose)
        return res
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def handle_generate_init_pose(req):
    try:
        # random init pose
        if np.random.rand(1) >0.5:
            offset = 0.8 
        else:
            offset = -0.8
        task_init_pose_y = 0.1*(np.random.rand(1)) + offset
        target_pose = [0.17480582, task_init_pose_y, 0.69538257, 0.09267109, 0.00379392, 1.59158403]
        q_new = quaternion_from_euler(target_pose[3], target_pose[4], target_pose[5]) # roll, pitch, yaw
        target_orientation = Quaternion(q_new[0], q_new[1], q_new[2], q_new[3])
        ps = Pose()
        ps.position.x = target_pose[0]
        ps.position.y = target_pose[1]
        ps.position.z = target_pose[2]
        ps.orientation = target_orientation
        joint_goal = ik_solver(ps).ik_result.data
        rospy.set_param('init_pose', joint_goal)

        res = TriggerResponse()
        res.success = True
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
        res = TriggerResponse()
        res.success = False
    return res


def main():
    args = rospy.myargv()
    if len(args) > 1: 
        prefix = '/'+args[1]
    else:
        prefix = ''

    rospy.init_node("init_generator", anonymous=True)
    s = rospy.Service('generate_init_pose', Trigger, handle_generate_init_pose)
    rospy.set_param('init_pose', [-1.601372543965475, -1.3494799772845667, -2.0361130873309534, 0.25178295286581065, 1.6211304664611816, 0.09116100519895554])
    rospy.spin()

if __name__ == '__main__':
  main()
