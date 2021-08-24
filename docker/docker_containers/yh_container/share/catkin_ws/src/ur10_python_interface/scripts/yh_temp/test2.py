#!/usr/bin/env python2


import tensorflow as tf
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
from datetime import datetime
from move_group_python_interface import MoveGroupPythonInteface

pygame.init()
FPS = 50 # frames per second setting
fpsClock = pygame.time.Clock()

pos = Float64MultiArray()
vel = Float64MultiArray()

class UR10_STM:
    def __init__(self):
        self.sess = None
        self.cur_state_tf = None
        self.desired_state_tf = None
        self.pred_next_state = None

    def initialize_NN(self,layers):        
        weights = []
        biases = []
        num_layers = len(layers) 
        for l in range(0,num_layers-1):
            W = self.xavier_init(size=[layers[l], layers[l+1]])
            b = tf.Variable(tf.zeros([1,layers[l+1]], dtype=tf.float32), dtype=tf.float32)
            weights.append(W)
            biases.append(b)        
        return weights, biases

    def xavier_init(self,size):
        in_dim = size[0]
        out_dim = size[1]        
        xavier_stddev = np.sqrt(2/(in_dim + out_dim))
        return tf.Variable(tf.truncated_normal([in_dim, out_dim], stddev=xavier_stddev), dtype=tf.float32)

    def neural_net(self,X, weights, biases,alpha):
        num_layers = len(weights) + 1
        H = X
        W = weights[0]
        b = biases[0]
        H = alpha*tf.add(tf.matmul(H, W), b)*tf.nn.sigmoid(tf.add(tf.matmul(H, W), b))
        for l in range(1,num_layers-2):
            W = weights[l]
            b = biases[l]
            H = alpha*tf.add(tf.matmul(H, W), b)*tf.nn.sigmoid(tf.add(tf.matmul(H, W), b))
        W = weights[-1]
        b = biases[-1]
        Y = tf.add(tf.matmul(H, W), b)
        return Y

    def init_model(self):
        tf.reset_default_graph()
        self.sess = tf.Session()

        th1_tf = tf.placeholder(tf.float32, [None, 1], name="th1")
        th2_tf = tf.placeholder(tf.float32, [None, 1], name="th2")
        th3_tf = tf.placeholder(tf.float32, [None, 1], name="th3")
        th4_tf = tf.placeholder(tf.float32, [None, 1], name="th4")
        th5_tf = tf.placeholder(tf.float32, [None, 1], name="th5")
        th6_tf = tf.placeholder(tf.float32, [None, 1], name="th6")
        th1_dot_tf = tf.placeholder(tf.float32, [None, 1], name="th1_dot")
        th2_dot_tf = tf.placeholder(tf.float32, [None, 1], name="th2_dot")
        th3_dot_tf = tf.placeholder(tf.float32, [None, 1], name="th3_dot")
        th4_dot_tf = tf.placeholder(tf.float32, [None, 1], name="th4_dot")
        th5_dot_tf = tf.placeholder(tf.float32, [None, 1], name="th5_dot")
        th6_dot_tf = tf.placeholder(tf.float32, [None, 1], name="th6_dot")
        desired_th1_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th1")
        desired_th2_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th2")
        desired_th3_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th3")
        desired_th4_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th4")
        desired_th5_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th5")
        desired_th6_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th6")
        desired_th1_dot_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th1_dot")
        desired_th2_dot_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th2_dot")
        desired_th3_dot_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th3_dot")
        desired_th4_dot_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th4_dot")
        desired_th5_dot_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th5_dot")
        desired_th6_dot_tf = tf.placeholder(tf.float32, [None, 1], name="desired_th6_dot")

        # concat state
        self.cur_state_tf = tf.concat([th1_tf, th2_tf,th3_tf,th4_tf,th5_tf,th6_tf,th1_dot_tf, th2_dot_tf,th3_dot_tf,th4_dot_tf,th5_dot_tf,th6_dot_tf],1)
        self.desired_state_tf = tf.concat([desired_th1_tf,desired_th2_tf,desired_th3_tf,desired_th4_tf,desired_th5_tf,desired_th6_tf,desired_th1_dot_tf,desired_th2_dot_tf,desired_th3_dot_tf,desired_th4_dot_tf,desired_th5_dot_tf,desired_th6_dot_tf],1)
        layers = [24,100,100,100,12]
        weights, biases = self.initialize_NN(layers)

        self.pred_next_state = self.neural_net(tf.concat([self.cur_state_tf,self.desired_state_tf],1), weights, biases,1.0)
        self.sess.run(tf.global_variables_initializer())
        saver = tf.train.Saver()
        writer = tf.summary.FileWriter('./graphs',self.sess.graph)

        #saver.restore(self.sess,'/root/bb_model.ckpt')
        print('successfully model loaded')

def sub_callback(data):
    pos.data = data.position
    vel.data = data.velocity

def listener():
    rospy.Subscriber('/joint_states',JointState, sub_callback)

def mpc_policy(model, pos, vel, goal_pos, num_action=128, time_horizon=5):

    pos = np.transpose(np.tile(np.expand_dims(pos,axis=1),num_action))
    vel = np.transpose(np.tile(np.expand_dims(vel,axis=1),num_action))
    states = np.concatenate([pos,vel],1)
    
    desired_pos = pos + np.random.random(size=np.shape(pos))*0.01
    desired_vel = vel + np.random.random(size=np.shape(vel))*0.01
    desired_states = np.concatenate([desired_pos,desired_vel],1)
    first_desired_states = desired_states
    #print(desired_pos)
    total_costs = np.zeros(num_action)
    for i in range(time_horizon):
        print(states[0,0],desired_states[0,0])
        dict={model.cur_state_tf: states, 
             model.desired_state_tf: desired_states}
        next_states = model.sess.run(model.pred_next_state,dict)
        total_costs += cost_fn(next_states,goal_pos,num_action)
        print(next_states[0,0])
        states = next_states
        print(next_states.shape)
        desired_pos = states[:,0:6] + np.random.random(size=np.shape(pos))*0.01
        desired_vel = states[:,6:12] + np.random.random(size=np.shape(vel))*0.01
        desired_states = np.concatenate([desired_pos,desired_vel],1)
    #print(total_costs)    
    return first_desired_states[np.argmin(total_costs),:].flatten()

def cost_fn(next_states,goal_pos,num_action):
    scores = np.mean(np.power(np.abs(next_states[:,0:6] - goal_pos),2))
    #print(scores)
    return scores 

#def reward_fn():


def set_trajectory_point(pos, vel, dt):
    trajectory=JointTrajectory()
    ts = rospy.Time.now()
    trajectory.header.stamp=ts
    trajectory.joint_names.append("shoulder_pan_joint")
    trajectory.joint_names.append("shoulder_lift_joint")
    trajectory.joint_names.append("elbow_joint")
    trajectory.joint_names.append("wrist_1_joint")
    trajectory.joint_names.append("wrist_2_joint")
    trajectory.joint_names.append("wrist_3_joint")
    
    point = JointTrajectoryPoint()
    point.positions  = pos                 
    point.velocities = vel
    point.time_from_start.secs  = 0
    point.time_from_start.nsecs = dt*1000000000
    
    trajectory.points.append(point)

    return trajectory


def get_robot_state(robot):
    jpos = pos.data
    jvel = vel.data

    jpos = np.array([jpos[2],jpos[1],jpos[0],jpos[3],jpos[4],jpos[5]])
    jvel = np.array([jvel[2],jvel[1],jvel[0],jvel[3],jvel[4],jvel[5]])

    #pose = robot.get_current_pose()
    #position = pose.position
    #rpy = euler_from_quaternion(robot.xyzw_array(pose.orientation))

    #tpos = np.array([position.x,position.y,position.z,rpy[0],rpy[1],rpy[2]])
    #tvel = np.matmul(robot.get_jacobian_yh(list(tpos)),jvel)

    return jpos, jvel

def get_current_task_pose(robot):
    pose = robot.get_current_pose()
    position = pose.position
    rpy = euler_from_quaternion(robot.xyzw_array(pose.orientation))

    tpos = np.array([position.x,position.y,position.z,rpy[0],rpy[1],rpy[2]])

    return tpos    

def solve_ik(robot,pos):

    q = quaternion_from_euler(pos[3],pos[4],pos[5])
    orientation = Quaternion(q[0],q[1],q[2],q[3])
    ps = PoseStamped()
    ps.pose.position.x = pos[0]
    ps.pose.position.y = pos[1]
    ps.pose.position.z = pos[2]
    ps.pose.orientation = orientation

    ik = robot.ik_solver.get_ik(ps)
    target_joints = ik.solution.joint_state.position
    
    return target_joints

def step(robot, model, pub, pos, vel, goal, start_time, dt=0.02):

    num_action = 512
    time_horizon = 3    

    desired_states = mpc_policy(model, pos, vel, goal, num_action, time_horizon)
    _trajectory = set_trajectory_point(desired_states[0:6], desired_states[6:12], dt)

    pub.publish(_trajectory)
    end_time = time.time()
    
    rate = rospy.Rate(1/(dt - end_time + start_time)+1)
    rate.sleep()

    #return npos, nvel, desired_states

def main():
    args = rospy.myargv()

    # Tensorflow things
    model = UR10_STM()
    model.init_model()

    # ROS things
    base_controller = "scaled_pos_joint_traj_controller"
    velocity_controller = "joint_group_vel_controller"
    listener()

    pub = rospy.Publisher('/scaled_pos_joint_traj_controller/command',JointTrajectory, queue_size=10)
    goal = np.array([0.0, 0.0, 0.0, 0.0, 0.0, 0.0])
    
    try:
        robot = MoveGroupPythonInteface(base_controller=base_controller, velocity_controller=velocity_controller)
        robot.go_to_init_state()

        #make for loop
        print("============ Press `Enter` to set initial pose and start RL ...")
        raw_input()

        #current task pose
        tpos = get_current_task_pose(robot)


        #task goal pose
        tgoal = tpos + np.array([0.1,0.0,0.0,0.0,0.0,0.0])

        #joint goal pose
        #jgoal = solve_ik(robot,tgoal)
        jgoal = [-1.501372543965475, -1.3494799772845667, -2.0361130873309534, 0.2808833122253418, 1.6211304664611816, 0.09116100519895554]
        #current joint state
        jpos, jvel = get_robot_state(robot)
        #print(jpos, jgoal)
        #for loop
        for i in range(3):
            start_time = time.time()
            step(robot, model, pub, jpos, jvel, jgoal, start_time, dt=0.04)
            jpos,jvel = get_robot_state(robot)
            #print(jpos, jvel)
            #print(time.time()-start_time)
        print("============ Press `Enter` to set initial pose and finish the program ...")
        raw_input()
        robot.go_to_init_state()
        
    except rospy.ROSInterruptException:
        return
    except KeyboardInterrupt:
        return

if __name__ == '__main__':
    main()
