#!/usr/bin/env python2



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
from std_msgs.msg import String
from std_msgs.msg import Float64MultiArray
from geometry_msgs.msg import PoseStamped, Quaternion
from geometry_msgs.msg import Quaternion
from controller_manager_msgs.srv import SwitchControllerRequest, SwitchController
from sensor_msgs.msg import JointState
from joystick import JoystickActor
from get_ik import GetIK

from move_group_python_interface import MoveGroupPythonInteface
import rosbag


pygame.init()
FPS = 60 # frames per second setting
fpsClock = pygame.time.Clock()

## END_SUB_TUTORIAL


# BOUND
X_UPPER = 0.5
X_LOWER = -0.16934080164772752
Y_UPPER = 0.8
Y_LOWER = 0.4
Z_UPPER = 0.85
Z_LOWER = 0.5

pos = Float64MultiArray()
vel = Float64MultiArray()
torque = Float64MultiArray()
ts1 = Float64MultiArray()
# state : x,y,z,rx,ry,rz
def quintic(init_state, delta_state, init_acc, goal_acc, time, dt, dof=3):
    p0 = np.array([init_state , 0, init_acc])
    p1 = np.array([delta_state, 0, goal_acc])

    t0 = 0.0
    t1 = time
    t = np.linspace(0,t1,(t1/dt)+1)

    mat = np.array([[1,  t0, t0**2, t0**3  , t0**4   , t0**5   ],
                    [0,  1,  2*t0 , 3*t0**2, 4*t0**3 , 5*t0**4 ],
                    [0,  0,  2    , 6*t0   , 12*t0**2, 20*t0**3],
                    [1,  t1, t1**2, t1**3  , t1**4   , t1**5   ],
                    [0,  1,  2*t1 , 3*t1**2, 4*t1**3 , 5*t1**4 ],
                    [0,  0,  2    , 6*t1   , 12*t1**2, 20*t1**3]]) 
    A = np.matmul(np.linalg.inv(mat),np.concatenate([p0,p1]))
    qt = A[0] + A[1] * t + A[2] * t**2 + A[3] * t**3 + A[4] * t**4 + A[5] * t**5
    dqt = A[1] + 2*A[2] * t + 3*A[3] * t**2 + 4*A[4] * t**3 + 5*A[5] * t**4
    ddqt = 2 * A[2] + 6*A[3] * t + 12*A[4]*t**2 + 20*A[5]*t**3

    return qt[1:], dqt[1:], ddqt[1:]


def sub_callback(data):
    pos.data = data.position
    vel.data = data.velocity
    torque.data = data.effort
    ts1.data = data.header.stamp

def move_loop_task(robot,pub,xqt,yqt,zqt,xdqt,ydqt,zdqt,rxqt,ryqt,rzqt,rxdqt,rydqt,rzdqt,xddqt,yddqt,zddqt,rxddqt,ryddqt,rzddqt,dt):
    rate = rospy.Rate(1/dt)

    _qt = []
    _dqt = []
    _pos =[]
    _vel =[]
    _torque = []

    for i in range(np.shape(xqt)[0]):    
        trajectory=JointTrajectory()
        trajectory.joint_names.append("shoulder_pan_joint")
        trajectory.joint_names.append("shoulder_lift_joint")
        trajectory.joint_names.append("elbow_joint")
        trajectory.joint_names.append("wrist_1_joint")
        trajectory.joint_names.append("wrist_2_joint")
        trajectory.joint_names.append("wrist_3_joint")
        
        point=JointTrajectoryPoint()
        ts = rospy.Time.now()
        trajectory.header.stamp=ts
        qt = solve_ik(robot, xqt[i],yqt[i],zqt[i],rxqt[i],ryqt[i],rzqt[i])
        J_a = robot.get_jacobian_yh(list(qt))
        dqt = solve_ik_vel(robot,rxqt[i],ryqt[i],rzqt[i], xdqt[i],ydqt[i],zdqt[i],rxdqt[i],rydqt[i],rzdqt[i],list(qt))
        _qt.append(qt)
        _dqt.append(dqt)
        _pos.append(pos.data)
        _vel.append(vel.data)
        _torque.append(torque.data)

        point.positions = qt                  
        point.velocities = dqt
        point.time_from_start.secs= 0
        point.time_from_start.nsecs = dt*1000000000

        
        trajectory.points.append(point)

        pub.publish(trajectory)

        rate.sleep()

    task_space_pose = np.array([xqt,yqt,zqt,rxqt,ryqt,rzqt])
    task_space_vel = np.array([xdqt,ydqt,zdqt,rxdqt,rydqt,rzdqt])
    task_space_acc = np.array([xddqt,yddqt,zddqt,rxddqt,ryddqt,rzddqt])
    joint_space_pose = _qt
    joint_space_vel = _dqt
    actual_pose = _pos
    actual_vel = _vel
    actual_torque = _torque
    return task_space_pose, task_space_vel, task_space_acc, joint_space_pose, joint_space_vel, actual_pose, actual_vel, actual_torque


def solve_ik(robot,xqt,yqt,zqt,rxqt,ryqt,rzqt):

    q = quaternion_from_euler(rxqt, ryqt, rzqt)
    orientation = Quaternion(q[0],q[1],q[2],q[3])
    ps = PoseStamped()
    ps.pose.position.x = xqt
    ps.pose.position.y = yqt
    ps.pose.position.z = zqt
    ps.pose.orientation = orientation

    ik = robot.ik_solver.get_ik(ps)
    target_joints = ik.solution.joint_state.position
    
    return target_joints

def solve_ik_vel(robot,rxqt,ryqt,rzqt,xdqt,ydqt,zdqt,rxdqt,rydqt,rzdqt,qt):

    X_dot = np.array([xdqt,ydqt,zdqt,rxdqt,rydqt,rzdqt])
    target_joints_velocity = np.matmul(np.linalg.inv(robot.get_jacobian_yh(qt)), X_dot)
    return target_joints_velocity

def listener():
    # In ROS, nodes are uniquely named. If two nodes with the same
    # name are launched, the previous one is kicked off. The
    # anonymous=True flag means that rospy will choose a unique
    # name for our 'listener' node so that multiple listeners can
    # run simultaneously.
    #rospy.init_node('listener', anonymous=True)

    rospy.Subscriber('/joint_states',JointState, sub_callback)

    # spin() simply keeps python from exiting until this node is stopped
    #rospy.spin()




def main():
    args = rospy.myargv()
    trial = 50
    init = 0
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

    #rospy.init_node('example',anonymous=True)
    listener()
    pub = rospy.Publisher('/scaled_pos_joint_traj_controller/command',JointTrajectory, queue_size=10)
    joint_init1= [-1.601372543965475, -1.3494799772845667, -2.0361130873309534, 0.2808833122253418, 1.6211304664611816, 0.09116100519895554]
    joint_init2= [-0.0642281165,	-1.3501867093,	-2.0350539078,	0.2808234766,	1.5863297571,	0.091106187]
    joint_init3= [1.532922682,	-1.3498376435,	-2.0350539078,	0.2808234766,	1.6212363422,	0.091106187]
    joint_init4= [3.115063649,	-1.3316862193,	-1.9729201865,	0.2806489437,	1.6212363422,	0.091106187]
    joint_init = [joint_init1,joint_init2,joint_init3,joint_init4]

    try:
        print("============ Press `Enter` to begin the tutorial by setting up the moveit_commander ...")
        raw_input()
        robot = MoveGroupPythonInteface(base_controller=base_controller, velocity_controller=velocity_controller)
        
        print("============ Press `Enter` to execute a movement using a joint state goal ...")
        raw_input()
        robot.go_to_init_state(joint_init[init])


        print("============ Press `Enter` to execute loop ...")
        raw_input() 

        dt = 0.04
        time = 4.0
        displacement_X = np.random.rand(3)*0.6-0.3
        displacement_Euler = np.random.rand(3)-0.5
        init_acc = np.random.rand(6)*2-1
        goal_acc = -init_acc
    
        task_space_control = True

        if task_space_control == True:
            
            current_position = robot.get_current_pose().position
            current_orientation_rpy = euler_from_quaternion(robot.xyzw_array(robot.get_current_pose().orientation))
            
            xqt,xdqt,xddqt = quintic(current_position.x, current_position.x+displacement_X[0], init_acc[0], goal_acc[0], time, dt)
            yqt,ydqt,yddqt = quintic(current_position.y, current_position.y+displacement_X[1], init_acc[1], goal_acc[1], time, dt)
            zqt,zdqt,zddqt = quintic(current_position.z, current_position.z+displacement_X[2], init_acc[2], goal_acc[2], time, dt)

            rxqt,rxdqt,rxddqt = quintic(current_orientation_rpy[0], current_orientation_rpy[0]+displacement_Euler[0], init_acc[3], goal_acc[3], time, dt)
            ryqt,rydqt,ryddqt = quintic(current_orientation_rpy[1], current_orientation_rpy[1]+displacement_Euler[1], init_acc[4], goal_acc[4], time, dt)
            rzqt,rzdqt,rzddqt = quintic(current_orientation_rpy[2], current_orientation_rpy[2]+displacement_Euler[2], init_acc[5], goal_acc[5], time, dt)

            task_space_pose, task_space_vel, task_space_acc, joint_space_pose, joint_space_vel, joint_actual_pose, joint_actual_vel, actual_torque = move_loop_task(robot,pub,xqt,yqt,zqt,xdqt,ydqt,zdqt,rxqt,ryqt,rzqt,rxdqt,rydqt,rzdqt,xddqt,yddqt,zddqt,rxddqt,ryddqt,rzddqt,dt) 
            
        print("============ Press `Enter` to execute a movement using a joint state goal ...")
        raw_input()
        robot.go_to_init_state(joint_init[init])
        
        np.save('/root/catkin_ws/src/ur10_python_interface/scripts/data/task_space_pose'+str(trial)+'_init'+str(init+1),task_space_pose)
        np.save('/root/catkin_ws/src/ur10_python_interface/scripts/data/task_space_vel'+str(trial)+'_init'+str(init+1),task_space_vel)
        np.save('/root/catkin_ws/src/ur10_python_interface/scripts/data/task_space_acc'+str(trial)+'_init'+str(init+1),task_space_acc)
        np.save('/root/catkin_ws/src/ur10_python_interface/scripts/data/joint_space_pose'+str(trial)+'_init'+str(init+1),joint_space_pose)
        np.save('/root/catkin_ws/src/ur10_python_interface/scripts/data/joint_space_vel'+str(trial)+'_init'+str(init+1),joint_space_vel)
        np.save('/root/catkin_ws/src/ur10_python_interface/scripts/data/actual_pose'+str(trial)+'_init'+str(init+1),joint_actual_pose)
        np.save('/root/catkin_ws/src/ur10_python_interface/scripts/data/actual_vel'+str(trial)+'_init'+str(init+1),joint_actual_vel)
        np.save('/root/catkin_ws/src/ur10_python_interface/scripts/data/actual_torque'+str(trial)+'_init'+str(init+1),actual_torque)

    except rospy.ROSInterruptException:
        return
    except KeyboardInterrupt:
        return

if __name__ == '__main__':
    main()