#!/usr/bin/env python

import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt
from datetime import datetime
import time

print(tf.__version__)
def auto_diff(cur_state_tf, desired_cur_state, deriv_cur_state_tf, deriv_desired_cur_state_tf, pred_next_state):

    n_th1_t = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,0],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,0],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    n_th2_t = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,1],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,1],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    n_th3_t = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,2],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,2],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    n_th4_t = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,3],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,3],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    n_th5_t = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,4],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,4],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    n_th6_t = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,5],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,5],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    
    n_th1_tt = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,6],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,6],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    n_th2_tt = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,7],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,7],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    n_th3_tt = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,8],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,8],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    n_th4_tt = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,9],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,9],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    n_th5_tt = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,10],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,10],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    n_th6_tt = tf.expand_dims(tf.reduce_sum(tf.gradients(pred_next_state[:,11],cur_state_tf)[0]*deriv_cur_state_tf,1)+tf.reduce_sum(tf.gradients(pred_next_state[:,11],desired_cur_state)[0]*deriv_desired_cur_state_tf,1),1)
    
    return n_th1_t, n_th2_t, n_th3_t, n_th4_t, n_th5_t, n_th6_t, n_th1_tt, n_th2_tt, n_th3_tt, n_th4_tt, n_th5_tt, n_th6_tt

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

pose = []
vel = []
acc = [] 
desired_pose = []
desired_vel = []


for j in range(1):
    for i in range(50):
        pose.append(np.load('/root/catkin_ws/src/ur10_python_interface/scripts/data/actual_pose'+str(i+1)+'_init'+str(j+1)+'.npy'))
        vel.append(np.load('/root/catkin_ws/src/ur10_python_interface/scripts/data/actual_vel'+str(i+1)+'_init'+str(j+1)+'.npy'))
        acc.append(np.load('/root/catkin_ws/src/ur10_python_interface/scripts/data/joint_space_acc'+str(i+1)+'_init'+str(j+1)+'.npy'))
        desired_pose.append(np.load('/root/catkin_ws/src/ur10_python_interface/scripts/data/joint_space_pose'+str(i+1)+'_init'+str(j+1)+'.npy'))
        desired_vel.append(np.load('/root/catkin_ws/src/ur10_python_interface/scripts/data/joint_space_vel'+str(i+1)+'_init'+str(j+1)+'.npy'))
        
pose = np.asarray(pose)
vel = np.asarray(vel)
acc = np.asarray(acc)
desired_pose = np.asarray(desired_pose)
desired_vel = np.asarray(desired_vel)


next_pose = pose[:,3:-2,:]
next_vel = vel[:,3:-2,:]
next_acc = acc[:,3:-2,:]
next_desired_pose = desired_pose[:,3:-2,:]
next_desired_vel = desired_vel[:,3:-2,:]

pose = pose[:,2:-3,:]
vel = vel[:,2:-3,:]
acc = acc[:,2:-3,:]
desired_pose = desired_pose[:,2:-3,:]
desired_vel = desired_vel[:,2:-3,:]


pos1 = pose[:,:,2].flatten()
pos2 = pose[:,:,1].flatten()
pos3 = pose[:,:,0].flatten()
pos4 = pose[:,:,3].flatten()
pos5 = pose[:,:,4].flatten()
pos6 = pose[:,:,5].flatten()

vel1 = vel[:,:,2].flatten()
vel2 = vel[:,:,1].flatten()
vel3 = vel[:,:,0].flatten()
vel4 = vel[:,:,3].flatten()
vel5 = vel[:,:,4].flatten()
vel6 = vel[:,:,5].flatten()

acc1 = acc[:,:,0].flatten()
acc2 = acc[:,:,1].flatten()
acc3 = acc[:,:,2].flatten()
acc4 = acc[:,:,3].flatten()
acc5 = acc[:,:,4].flatten()
acc6 = acc[:,:,5].flatten()

desired_pose1 = desired_pose[:,:,0].flatten()
desired_pose2 = desired_pose[:,:,1].flatten()
desired_pose3 = desired_pose[:,:,2].flatten()
desired_pose4 = desired_pose[:,:,3].flatten()
desired_pose5 = desired_pose[:,:,4].flatten()
desired_pose6 = desired_pose[:,:,5].flatten()

desired_vel1 = desired_vel[:,:,0].flatten()
desired_vel2 = desired_vel[:,:,1].flatten()
desired_vel3 = desired_vel[:,:,2].flatten()
desired_vel4 = desired_vel[:,:,3].flatten()
desired_vel5 = desired_vel[:,:,4].flatten()
desired_vel6 = desired_vel[:,:,5].flatten()

next_pos1 = next_pose[:,:,2].flatten()
next_pos2 = next_pose[:,:,1].flatten()
next_pos3 = next_pose[:,:,0].flatten()
next_pos4 = next_pose[:,:,3].flatten()
next_pos5 = next_pose[:,:,4].flatten()
next_pos6 = next_pose[:,:,5].flatten()

next_vel1 = next_vel[:,:,2].flatten()
next_vel2 = next_vel[:,:,1].flatten()
next_vel3 = next_vel[:,:,0].flatten()
next_vel4 = next_vel[:,:,3].flatten()
next_vel5 = next_vel[:,:,4].flatten()
next_vel6 = next_vel[:,:,5].flatten()

next_acc1 = next_acc[:,:,0].flatten()
next_acc2 = next_acc[:,:,1].flatten()
next_acc3 = next_acc[:,:,2].flatten()
next_acc4 = next_acc[:,:,3].flatten()
next_acc5 = next_acc[:,:,4].flatten()
next_acc6 = next_acc[:,:,5].flatten()




pose = np.transpose(np.vstack([pos1,pos2,pos3,pos4,pos5,pos6]))
vel = np.transpose(np.vstack([vel1,vel2,vel3,vel4,vel5,vel6]))
acc = np.transpose(np.vstack([acc1,acc2,acc3,acc4,acc5,acc6]))
desired_pose = np.transpose(np.vstack([desired_pose1,desired_pose2,desired_pose3,desired_pose4,desired_pose5,desired_pose6]))
desired_vel = np.transpose(np.vstack([desired_vel1,desired_vel2,desired_vel3,desired_vel4,desired_vel5,desired_vel6]))

next_pose   = np.transpose(np.vstack([next_pos1,next_pos2,next_pos3,next_pos4,next_pos5,next_pos6]))
next_vel    = np.transpose(np.vstack([next_vel1,next_vel2,next_vel3,next_vel4,next_vel5,next_vel6]))
next_acc    = np.transpose(np.vstack([next_acc1,next_acc2,next_acc3,next_acc4,next_acc5,next_acc6]))


now = time.time()
for j in range(1):
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
    th1_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="th1_ddot")
    th2_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="th2_ddot")
    th3_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="th3_ddot")
    th4_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="th4_ddot")
    th5_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="th5_ddot")
    th6_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="th6_ddot")
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
    
    next_th1_tf = tf.placeholder(tf.float32, [None, 1], name="next_th1")
    next_th2_tf = tf.placeholder(tf.float32, [None, 1], name="next_th2")
    next_th3_tf = tf.placeholder(tf.float32, [None, 1], name="next_th3")
    next_th4_tf = tf.placeholder(tf.float32, [None, 1], name="next_th4")
    next_th5_tf = tf.placeholder(tf.float32, [None, 1], name="next_th5")
    next_th6_tf = tf.placeholder(tf.float32, [None, 1], name="next_th6")
    next_th1_dot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th1_dot")
    next_th2_dot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th2_dot")
    next_th3_dot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th3_dot")
    next_th4_dot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th4_dot")
    next_th5_dot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th5_dot")
    next_th6_dot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th6_dot")
    next_th1_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th1_ddot")
    next_th2_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th2_ddot")
    next_th3_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th3_ddot")
    next_th4_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th4_ddot")
    next_th5_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th5_ddot")
    next_th6_ddot_tf = tf.placeholder(tf.float32, [None, 1], name="next_th6_ddot")
        
    # concat state
    cur_state_tf = tf.concat([th1_tf, th2_tf,th3_tf,th4_tf,th5_tf,th6_tf,th1_dot_tf, th2_dot_tf,th3_dot_tf,th4_dot_tf,th5_dot_tf,th6_dot_tf],1)
    next_state_tf = tf.concat([next_th1_tf,next_th2_tf,next_th3_tf,next_th4_tf,next_th5_tf,next_th6_tf,next_th1_dot_tf,next_th2_dot_tf,next_th3_dot_tf,next_th4_dot_tf,next_th5_dot_tf,next_th6_dot_tf],1)
    desired_cur_state_tf = tf.concat([desired_th1_tf,desired_th2_tf,desired_th3_tf,desired_th4_tf,desired_th5_tf,desired_th6_tf,desired_th1_dot_tf,desired_th2_dot_tf,desired_th3_dot_tf,desired_th4_dot_tf,desired_th5_dot_tf,desired_th6_dot_tf],1)
    deriv_cur_state_tf = tf.concat([th1_dot_tf, th2_dot_tf,th3_dot_tf,th4_dot_tf,th5_dot_tf,th6_dot_tf,th1_ddot_tf, th2_ddot_tf,th3_ddot_tf,th4_ddot_tf,th5_ddot_tf,th6_ddot_tf],1)
    deriv_desired_cur_state_tf = tf.concat([desired_th1_dot_tf,desired_th2_dot_tf,desired_th3_dot_tf,desired_th4_dot_tf,desired_th5_dot_tf,desired_th6_dot_tf,th1_ddot_tf, th2_ddot_tf,th3_ddot_tf,th4_ddot_tf,th5_ddot_tf,th6_ddot_tf],1)
    layers = [24,100,100,100,12]
    weights, biases = initialize_NN(layers)
    
    # norm diff pred next state(x, theta) x_dot, theta_dot
    pred_next_state = neural_net(tf.concat([cur_state_tf,desired_cur_state_tf],1), weights, biases,1.0)
    #pred_next_state = utils.build_mlp_tanh(tf.concat([cur_state_tf,action_tf],1), 4, "dynamics", reuse=False, n_layers=1, hidden_dim= 500)

    #pred next state(absolute value: unnorm(diff) + current)
    th1_t,th2_t,th3_t,th4_t,th5_t,th6_t,th1_tt,th2_tt,th3_tt,th4_tt,th5_tt,th6_tt  = auto_diff(cur_state_tf,desired_cur_state_tf,deriv_cur_state_tf,deriv_desired_cur_state_tf,pred_next_state)
    loss1  = tf.losses.mean_squared_error(next_state_tf, pred_next_state)
    loss2  = tf.losses.mean_squared_error(th1_t, next_th1_dot_tf)
    loss3  = tf.losses.mean_squared_error(th2_t, next_th2_dot_tf)
    loss4  = tf.losses.mean_squared_error(th3_t, next_th3_dot_tf)
    loss5  = tf.losses.mean_squared_error(th4_t, next_th4_dot_tf)
    loss6  = tf.losses.mean_squared_error(th5_t, next_th5_dot_tf)
    loss7  = tf.losses.mean_squared_error(th6_t, next_th6_dot_tf)
    loss8  = tf.losses.mean_squared_error(th1_tt,next_th1_ddot_tf)
    loss9  = tf.losses.mean_squared_error(th2_tt,next_th2_ddot_tf)
    loss10 = tf.losses.mean_squared_error(th3_tt,next_th3_ddot_tf)
    loss11 = tf.losses.mean_squared_error(th4_tt,next_th4_ddot_tf)
    loss12 = tf.losses.mean_squared_error(th5_tt,next_th5_ddot_tf)
    loss13 = tf.losses.mean_squared_error(th6_tt,next_th6_ddot_tf)
    loss = loss1 +(loss2 + loss3 + loss4 + loss5 + loss6 + loss7 + loss8 + loss9 + loss10 + loss11 + loss12 + loss13)*0.0001
    optimizer = tf.train.AdamOptimizer(learning_rate=0.001).minimize(loss)
    sess.run(tf.global_variables_initializer())
    saver = tf.train.Saver()
    writer = tf.summary.FileWriter('./graphs',sess.graph)

    batch_size = 512*256
    epoch = 10000

    test_dict={th1_tf: np.transpose([pose[4000:4750,0]]), 
               th2_tf: np.transpose([pose[4000:4750,1]]), 
               th3_tf: np.transpose([pose[4000:4750,2]]), 
               th4_tf: np.transpose([pose[4000:4750,3]]), 
               th5_tf: np.transpose([pose[4000:4750,4]]), 
               th6_tf: np.transpose([pose[4000:4750,5]]), 
               th1_dot_tf: np.transpose([vel[4000:4750,0]]), 
               th2_dot_tf: np.transpose([vel[4000:4750,1]]), 
               th3_dot_tf: np.transpose([vel[4000:4750,2]]), 
               th4_dot_tf: np.transpose([vel[4000:4750,3]]), 
               th5_dot_tf: np.transpose([vel[4000:4750,4]]), 
               th6_dot_tf: np.transpose([vel[4000:4750,5]]), 
               th1_ddot_tf: np.transpose([acc[4000:4750,0]]), 
               th2_ddot_tf: np.transpose([acc[4000:4750,1]]), 
               th3_ddot_tf: np.transpose([acc[4000:4750,2]]), 
               th4_ddot_tf: np.transpose([acc[4000:4750,3]]), 
               th5_ddot_tf: np.transpose([acc[4000:4750,4]]), 
               th6_ddot_tf: np.transpose([acc[4000:4750,5]]),
               desired_th1_tf: np.transpose([desired_pose[4000:4750,0]]), 
               desired_th2_tf: np.transpose([desired_pose[4000:4750,1]]), 
               desired_th3_tf: np.transpose([desired_pose[4000:4750,2]]), 
               desired_th4_tf: np.transpose([desired_pose[4000:4750,3]]), 
               desired_th5_tf: np.transpose([desired_pose[4000:4750,4]]), 
               desired_th6_tf: np.transpose([desired_pose[4000:4750,5]]),
               desired_th1_dot_tf: np.transpose([desired_vel[4000:4750,0]]), 
               desired_th2_dot_tf: np.transpose([desired_vel[4000:4750,1]]), 
               desired_th3_dot_tf: np.transpose([desired_vel[4000:4750,2]]), 
               desired_th4_dot_tf: np.transpose([desired_vel[4000:4750,3]]), 
               desired_th5_dot_tf: np.transpose([desired_vel[4000:4750,4]]), 
               desired_th6_dot_tf: np.transpose([desired_vel[4000:4750,5]]),
               next_th1_tf: np.transpose([next_pose[4000:4750,0]]), 
               next_th2_tf: np.transpose([next_pose[4000:4750,1]]), 
               next_th3_tf: np.transpose([next_pose[4000:4750,2]]), 
               next_th4_tf: np.transpose([next_pose[4000:4750,3]]), 
               next_th5_tf: np.transpose([next_pose[4000:4750,4]]), 
               next_th6_tf: np.transpose([next_pose[4000:4750,5]]), 
               next_th1_dot_tf: np.transpose([next_vel[4000:4750,0]]), 
               next_th2_dot_tf: np.transpose([next_vel[4000:4750,1]]), 
               next_th3_dot_tf: np.transpose([next_vel[4000:4750,2]]), 
               next_th4_dot_tf: np.transpose([next_vel[4000:4750,3]]), 
               next_th5_dot_tf: np.transpose([next_vel[4000:4750,4]]), 
               next_th6_dot_tf: np.transpose([next_vel[4000:4750,5]]),
               next_th1_ddot_tf: np.transpose([next_acc[4000:4750,0]]), 
               next_th2_ddot_tf: np.transpose([next_acc[4000:4750,1]]), 
               next_th3_ddot_tf: np.transpose([next_acc[4000:4750,2]]), 
               next_th4_ddot_tf: np.transpose([next_acc[4000:4750,3]]), 
               next_th5_ddot_tf: np.transpose([next_acc[4000:4750,4]]), 
               next_th6_ddot_tf: np.transpose([next_acc[4000:4750,5]])}

    train_dict={th1_tf: np.transpose([pose[0:4000,0]]), 
                th2_tf: np.transpose([pose[0:4000,1]]), 
                th3_tf: np.transpose([pose[0:4000,2]]), 
                th4_tf: np.transpose([pose[0:4000,3]]), 
                th5_tf: np.transpose([pose[0:4000,4]]), 
                th6_tf: np.transpose([pose[0:4000,5]]), 
                th1_dot_tf: np.transpose([vel[0:4000,0]]), 
                th2_dot_tf: np.transpose([vel[0:4000,1]]), 
                th3_dot_tf: np.transpose([vel[0:4000,2]]), 
                th4_dot_tf: np.transpose([vel[0:4000,3]]), 
                th5_dot_tf: np.transpose([vel[0:4000,4]]), 
                th6_dot_tf: np.transpose([vel[0:4000,5]]), 
                th1_ddot_tf: np.transpose([acc[0:4000,0]]), 
                th2_ddot_tf: np.transpose([acc[0:4000,1]]), 
                th3_ddot_tf: np.transpose([acc[0:4000,2]]), 
                th4_ddot_tf: np.transpose([acc[0:4000,3]]), 
                th5_ddot_tf: np.transpose([acc[0:4000,4]]), 
                th6_ddot_tf: np.transpose([acc[0:4000,5]]),
                desired_th1_tf: np.transpose([desired_pose[0:4000,0]]), 
                desired_th2_tf: np.transpose([desired_pose[0:4000,1]]), 
                desired_th3_tf: np.transpose([desired_pose[0:4000,2]]), 
                desired_th4_tf: np.transpose([desired_pose[0:4000,3]]), 
                desired_th5_tf: np.transpose([desired_pose[0:4000,4]]), 
                desired_th6_tf: np.transpose([desired_pose[0:4000,5]]),
                desired_th1_dot_tf: np.transpose([desired_vel[0:4000,0]]), 
                desired_th2_dot_tf: np.transpose([desired_vel[0:4000,1]]), 
                desired_th3_dot_tf: np.transpose([desired_vel[0:4000,2]]), 
                desired_th4_dot_tf: np.transpose([desired_vel[0:4000,3]]), 
                desired_th5_dot_tf: np.transpose([desired_vel[0:4000,4]]), 
                desired_th6_dot_tf: np.transpose([desired_vel[0:4000,5]]),
                next_th1_tf: np.transpose([next_pose[0:4000,0]]), 
                next_th2_tf: np.transpose([next_pose[0:4000,1]]), 
                next_th3_tf: np.transpose([next_pose[0:4000,2]]), 
                next_th4_tf: np.transpose([next_pose[0:4000,3]]), 
                next_th5_tf: np.transpose([next_pose[0:4000,4]]), 
                next_th6_tf: np.transpose([next_pose[0:4000,5]]), 
                next_th1_dot_tf: np.transpose([next_vel[0:4000,0]]), 
                next_th2_dot_tf: np.transpose([next_vel[0:4000,1]]), 
                next_th3_dot_tf: np.transpose([next_vel[0:4000,2]]), 
                next_th4_dot_tf: np.transpose([next_vel[0:4000,3]]), 
                next_th5_dot_tf: np.transpose([next_vel[0:4000,4]]), 
                next_th6_dot_tf: np.transpose([next_vel[0:4000,5]]),
                next_th1_ddot_tf: np.transpose([next_acc[0:4000,0]]), 
                next_th2_ddot_tf: np.transpose([next_acc[0:4000,1]]), 
                next_th3_ddot_tf: np.transpose([next_acc[0:4000,2]]), 
                next_th4_ddot_tf: np.transpose([next_acc[0:4000,3]]), 
                next_th5_ddot_tf: np.transpose([next_acc[0:4000,4]]), 
                next_th6_ddot_tf: np.transpose([next_acc[0:4000,5]])}

    for i in range(epoch):
        _,_loss,_loss1,_loss2,_loss3,_loss4,_loss5,_loss6,_loss7,_loss8,_loss9,_loss10,_loss11,_loss12,_loss13 = sess.run([optimizer,loss,loss1,loss2,loss3,loss4,loss5,loss6,loss7,loss8,loss9,loss10,loss11,loss12,loss13], train_dict)
        #_,_loss= sess.run([optimizer,loss], train_dict)
        
        
        if i % 100 == 0:
            end = time.time()
            __loss,pred = sess.run([loss,pred_next_state], test_dict)
            print(j+1, i,pred[:,0], _loss,__loss, _loss1+_loss2+_loss3+_loss4+_loss5+_loss6+_loss7+_loss8+_loss9+_loss10+_loss11+_loss12+_loss13, end-now)
    saver.save(sess,'./bb_model.ckpt')
      
