#!/usr/bin/env python3


import tensorflow.compat.v1 as tf
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
from std_msgs.msg import String, Float64MultiArray
from geometry_msgs.msg import PoseStamped, Quaternion

from controller_manager_msgs.srv import SwitchControllerRequest, SwitchController
from sensor_msgs.msg import JointState
from get_ik import GetIK
from datetime import datetime
from move_group_python_interface import MoveGroupPythonInterface

tf.disable_v2_behavior()
pygame.init()
FPS = 50 # frames per second setting
fpsClock = pygame.time.Clock()
pos = Float64MultiArray()
vel = Float64MultiArray()

haptic_state = Float64MultiArray()


## tensorflow things
def initialize_NN(layers):        
    weights = []
    biases = []
    num_layers = len(layers) 
    for l in range(0,num_layers-1):
        W = xavier_init(size=[layers[l], layers[l+1]])
        b = tf.Variable(tf.zeros([1,layers[l+1]], dtype=tf.float32), dtype=tf.float32)
        weights.append(W)
        biases.append(b)        
    return weights, biases

def xavier_init(size):
    in_dim = size[0]
    out_dim = size[1]        
    xavier_stddev = np.sqrt(2/(in_dim + out_dim))
    return tf.Variable(tf.truncated_normal([in_dim, out_dim], stddev=xavier_stddev), dtype=tf.float32)

def neural_net(X, weights, biases,alpha):
    num_layers = len(weights) + 1
    H = X
    W = weights[0]
    b = biases[0]
    H = tf.nn.tanh(tf.add(tf.matmul(H, W), b))
    #H = alpha*tf.add(tf.matmul(H, W), b)*tf.nn.sigmoid(tf.add(tf.matmul(H, W), b))
    for l in range(1,num_layers-2):
        W = weights[l]
        b = biases[l]
        H = tf.nn.tanh(tf.add(tf.matmul(H, W), b))
        #H = alpha*tf.add(tf.matmul(H, W), b)*tf.nn.sigmoid(tf.add(tf.matmul(H, W), b))
    W = weights[-1]
    b = biases[-1]
    Y = tf.add(tf.matmul(H, W), b)
    return Y


tf.reset_default_graph()
sess = tf.Session()
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
    

cur_state_tf = tf.concat([th1_tf, th2_tf,th3_tf,th4_tf,th5_tf,th6_tf,th1_dot_tf, th2_dot_tf,th3_dot_tf,th4_dot_tf,th5_dot_tf,th6_dot_tf],1)
desired_cur_state_tf = tf.concat([desired_th1_tf,desired_th2_tf,desired_th3_tf,desired_th4_tf,desired_th5_tf,desired_th6_tf,desired_th1_dot_tf,desired_th2_dot_tf,desired_th3_dot_tf,desired_th4_dot_tf,desired_th5_dot_tf,desired_th6_dot_tf],1)
layers = [24,100,100,100,12]
weights, biases = initialize_NN(layers)
pred_next_state = neural_net(tf.concat([cur_state_tf,desired_cur_state_tf],1), weights, biases,1.0)
saver = tf.train.Saver()
saver.restore(sess,'/root/share/catkin_ws/src/ur10_python_interface/scripts/dp_model.ckpt')


def ur_state_callback(data):
    pos.data = data.position
    vel.data = data.velocity


def haptic_state_callback(data):
    haptic_state.data = data.data

def listener_ur10():
    sub_state = rospy.Subscriber('/joint_states',JointState, ur_state_callback)


def listener_haptic():
    sub_target = rospy.Subscriber('/human_action', Float64MultiArray, haptic_state_callback)





def mpc_policy(prev_pos, prev_vel, pos, vel, goal_pos, num_action=128, time_horizon=5):
    #print(pos)
    pos = np.transpose(np.tile(np.expand_dims(pos,axis=1),num_action))
    vel = np.transpose(np.tile(np.expand_dims(vel,axis=1),num_action))
    prev_pos = np.transpose(np.tile(np.expand_dims(prev_pos,axis=1),num_action))
    prev_vel = np.transpose(np.tile(np.expand_dims(prev_vel,axis=1),num_action))
    states = np.concatenate([pos,vel],1)

    desired_pos = pos + np.random.randn(np.shape(pos)[0],np.shape(pos)[1])*0.002
    desired_vel = np.random.randn(np.shape(vel)[0],np.shape(vel)[1])*0.05
    desired_states = np.concatenate([desired_pos,desired_vel],1)
    first_desired_states = desired_states
    total_costs = np.zeros(num_action)
    
    for i in range(time_horizon):
        dict={cur_state_tf: states, 
              desired_cur_state_tf: desired_states}
        next_states = sess.run(pred_next_state,dict)

        total_costs += (0.9**i)*cost_fn(prev_pos, prev_vel, states, next_states, goal_pos, num_action)
        prev_pos = states[:,0:6]
        prev_vel = states[:,6:12]
        states = next_states
        desired_pos = states[:,0:6] + np.random.randn(np.shape(pos)[0],np.shape(pos)[1])*0.002
        desired_vel = np.random.randn(np.shape(vel)[0],np.shape(vel)[1])*0.05
        desired_states = np.concatenate([desired_pos,desired_vel],1)
    #print(np.min(total_costs))
    #print(np.min(np.sum(np.power(next_states[:,0:6] - goal_pos,2),1)))
    return first_desired_states[np.argmin(total_costs),:].flatten()

def cost_fn(prev_pos, prev_vel, states, next_states, goal_pos,num_action):

    dist_scores = np.sum(np.power(next_states[:,0:6] - goal_pos,2),1)
    smooth_scores1 = np.sum(np.power(next_states[:,0:6]-2*states[:,0:6]+prev_pos,2),1)
    smooth_scores2 = np.sum(np.power(next_states[:,6:12]-2*states[:,6:12]+prev_vel,2),1)
    #print(np.min(dist_scores), np.min(smooth_scores1), np.min(smooth_scores2))
    scores = dist_scores + smooth_scores1 + smooth_scores2
    return scores


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
    point.positions  = list(pos)                 
    point.velocities = list(vel)
    point.time_from_start.secs  = 0
    point.time_from_start.nsecs = int(dt*1000000000)
    
    trajectory.points.append(point)

    return trajectory


def get_robot_state(robot):
    jpos = pos.data
    jvel = vel.data
    #print(jpos)
    #jpos = np.array([jpos[2],jpos[1],jpos[0],jpos[3],jpos[4],jpos[5]])
    #jvel = np.array([jvel[2],jvel[1],jvel[0],jvel[3],jvel[4],jvel[5]])

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

def step(robot, pub, prev_pos, prev_vel, pos, vel, goal, start_time, dt=0.02):

    num_action = 8192
    time_horizon = 5   

    #desired_states = mpc_policy(prev_pos, prev_vel, pos, vel, goal, num_action, time_horizon)
    #print(desired_states)
    #_trajectory = set_trajectory_point(desired_states[0:6], desired_states[6:12], dt)
    pub.publish(haptic_state)
    #pub.publish(_trajectory)
    end_time = time.time()
    print(haptic_state)
    rate = rospy.Rate(1/(dt - end_time + start_time))
    rate.sleep()

    #return npos, nvel, desired_states


def main():
    args = rospy.myargv()

    # Tensorflow things
    #model = UR10_STM()
    #model.init_model()
    
    
    # ROS things
    base_controller = "scaled_pos_joint_traj_controller"
    velocity_controller = "joint_group_vel_controller"
    listener_ur10()
    listener_haptic()

    #pub = rospy.Publisher('/scaled_pos_joint_traj_controller/command',JointTrajectory, queue_size=10)
    pub = rospy.Publisher('/joint_group_vel_controller/command',Float64MultiArray,queue_size=10)
    try:
        robot = MoveGroupPythonInterface(base_controller=base_controller, velocity_controller=velocity_controller)
        robot.go_to_init_state()

        #make for loop
        print("============ Press `Enter` to set initial pose and start RL ...")
        input()

        #current task pose
        tpos = get_current_task_pose(robot)


        #task goal pose
        tgoal = tpos + np.array([0.1,0.0,0.0,0.0,0.0,0.0])

        #joint goal pose
        initial_jpose = solve_ik(robot,tpos)
        jgoal = solve_ik(robot,tgoal)
        #print(initial_jpose)
        #iniital = [-1.6013363041835498, -1.3494556584093513, -2.036089245832021, 0.28090727362727486, 1.621070622801744, 0.0912329109667337]
        #jgoal =   [-1.8255818643548916, -1.4388932350009778, -1.9639908065425267, 0.29963446063411736, 1.8451586542765885, 0.09976809103292612]

        #current joint state
        jpos, jvel = get_robot_state(robot)
        prev_pos = jpos
        prev_vel = jvel
        #print(jpos, jgoal)
        #for loop
        #for i in range(300):
        while(1):
            start_time = time.time()
            step(robot,  pub, prev_pos, prev_vel, jpos, jvel, jgoal, start_time, dt=0.004)
            prev_pos = jpos
            prev_vel = jvel
            jpos,jvel = get_robot_state(robot)
            #print(time.time()-start_time)
        print(jpos)
        #print(jgoal)
        print("============ Press `Enter` to set initial pose and finish the program ...")
        input()
        robot.go_to_init_state()
        
    except rospy.ROSInterruptException:
        return
    except KeyboardInterrupt:
        return
    
if __name__ == '__main__':
    main()
