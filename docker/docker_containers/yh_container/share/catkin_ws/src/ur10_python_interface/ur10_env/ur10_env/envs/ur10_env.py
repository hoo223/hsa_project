#!/usr/bin/python
# -*- coding: utf8 -*- 
# This code is based on https://github.com/TolgaOk/ur_gym 

# MIT License
#
# Copyright (c) 2017 Tolga Ok
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

## standard library
import numpy as np
import roslaunch
import time
import os
import sys
import gym
from gym.utils import seeding, EzPickle
from gym import spaces

## ros library
import rospy
import tf
from gazebo_msgs.srv import SetModelConfiguration
from std_srvs.srv import Empty, Trigger, TriggerResponse
from sensor_msgs.msg import JointState
from std_msgs.msg import Float64MultiArray, Float64, Bool
from tf2_msgs.msg import TFMessage

## custom library
from ur10_python_interface.msg import Ellipsoid3
#sys.path.append("/root/catkin_ws/src/ur10_python_interface/scripts") # 필요한 python 파일이 있는 경로 추가
from move_group_python_interface import MoveGroupPythonInteface


## class definition
class UR10Env(gym.Env, EzPickle):
    """ This is a base class for ur10 manupulation tasks. It can be used to initialize
        launch file, controller type, tf listener and ros node.
        Methods:
        _step:
            This method returns position of the tip of the ur10 robot and next state.
            It publishes given action for 1/5f seconds. Note that, actions are considered
            as at the same order with the initial joint name list.

            Args:
                action: A length 6 iterable corresponding to each joint action.
            Return:
                tip_position: X, Y, Z coordinate of the tip of the ur10.
                next_state: Last values for the joint postion and their time derivatives.

        _reset:
            This method pause the gazebo and then resets the ur10 joint angles to the
            initial joint angles. After that it listens joint states for a single message
            to return it. It does not refreshs the ros time.

            Return:
                state: Joint position and time derivaties of the last state.

    """
    metadata = {'render.modes': ['human']}

    def __init__(self, FPS=1100):

        ob_dim = 12
        self.observation_space = spaces.Box(-np.inf, np.inf, shape=(ob_dim,), dtype=np.float32)
        self.continuous = True
        if self.continuous:
            # Action is two floats [main engine, left-right engines].
            # Main engine: -1..0 off, 0..+1 throttle from 50% to 100% power. Engine can't work with less than 50% power.
            # Left-right:  -1.0..-0.5 fire left engine, +0.5..+1.0 fire right engine, -0.5..0.5 off
            self.action_space = spaces.Box(-5, +5, (6,), dtype=np.float32)
        else:
            # Nop, fire left engine, main engine, right engine
            self.action_space = spaces.Discrete(64)

        ## initialization
        try:
            rospy.init_node('ur10_env', anonymous=True)
        except:
            print("Already initializaed!")
        #self.initial_angle = np.array([0.0, 0.0, 0.0, 0.0, 0.0, 0.0], dtype=np.float32)*-1*np.pi/2
        self.initial_angle = np.array([-1.601372543965475, -1.3494799772845667, -2.0361130873309534, 0.25178295286581065, 1.6211304664611816, 0.09116100519895554], dtype=np.float32)
        #self.initial_angle = np.array([-1.5999897112701706, -1.3500032022166835, -2.040067726204013, -1.3188300763644802, 1.6184002310830374, 0.09156995930090517], dtype=np.float32)
        self.joint_names = ['shoulder_pan_joint', 'shoulder_lift_joint', 'elbow_joint', 'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']
        self.period = rospy.Duration(1./FPS)
        self.rate = rospy.Rate(FPS)
        self._state = None
        self.tip_position = None
        self.zero_vel_msg = Float64MultiArray()
        self.zero_vel_msg.data = np.array([0, 0, 0, 0, 0, 0])
        self.joint_vel_msg = Float64MultiArray()
        self.singular_threshold = 0.0

        ## get service proxy for Gazebo
        self.unpause = rospy.ServiceProxy("/gazebo/unpause_physics", Empty)
        self.pause = rospy.ServiceProxy("/gazebo/pause_physics", Empty)
        self.reset_world = rospy.ServiceProxy("/gazebo/reset_world", Empty)
        self.reset_sim = rospy.ServiceProxy("/gazebo/reset_simulation", Empty)
        self.joints_initializer = rospy.ServiceProxy("/gazebo/set_model_configuration", SetModelConfiguration)
        
        ## check gazebo 
        try:
            rospy.wait_for_service("/gazebo/pause_physics", timeout=0.01)
            print("gazebo on!")
            # rospy.init_node("node_gym")
        except rospy.exceptions.ROSException:
            self.launch(self.main_launch_path).start(auto_terminate=True)

        ## publisher
        self.ellipsoid_pub = rospy.Publisher("/ellipsoid", Ellipsoid3, queue_size=10)
        self.vel_pub = rospy.Publisher('/joint_group_velocity_controller/command', Float64MultiArray, queue_size=10)

        ## subscriber -> ros init 다음에
        state_subscriber = rospy.Subscriber("/joint_states", JointState, callback=self.update_state_callback, queue_size=10)
        m_index_subscriber = rospy.Subscriber("/m_index", Float64, callback=self.m_index_callback, queue_size=10)
        eigen_value_subscriber = rospy.Subscriber("/eigen_value", Float64MultiArray, callback=self.eigen_value_callback, queue_size=10)
        self_collision_subscriber = rospy.Subscriber("self_collision", Bool, callback=self.self_collision_callback, queue_size=10)

        ## tf listener
        self.base = "base_link"
        self.end = "ee_link" #"wrist_3_link"
        now = rospy.Time.now()
        self.tf_listener = tf.TransformListener()

        print("Env Loaded!")

        ## reset env
        #self._reset()


    def update_state_callback(self, data):
        self._state = np.array(data.position + data.velocity)
        # now = rospy.Time.now()
        # self.tf_listener.waitForTransform(self.base, self.end, now, rospy.Duration(5.0));
        # position, quaternion = self.tf_listener.lookupTransform(self.base, self.end, now)
        # self.tip_position = position
        # self._additional_state_callback()

    def m_index_callback(self, data):
        self.m_index = data.data
    
    def eigen_value_callback(self, data):
        self.eigen_value = data.data

    def self_collision_callback(self, data):
        self.self_collision = data.data

    def step(self, state, action):
        self.joint_vel_msg.data = action 
        start_ros_time = rospy.Time.now()
        ## publich the joint velocity message
        self.vel_pub.publish(self.joint_vel_msg) 
        while True:     
            elapsed_time = rospy.Time.now() - start_ros_time
            if elapsed_time > self.period*(99.0/100):
                if elapsed_time > self.period:
                    break
                else:
                    rospy.sleep(self.period-elapsed_time)
                    break
            else:
                rospy.sleep(self.period/100.0)        
        #self.rate.sleep()

        ## update state
        rospy.wait_for_message("/joint_states", JointState)
        ob_next = self._state

        ## update reward
        reward = self._get_reward(state)

        ## update done
        if reward <= -999:
            done = True
        else:
            done = False

        return (ob_next, reward, done)


    def reset_episode_client(self):
        if rospy.get_param('teleop_state') == 'start':
            rospy.wait_for_service('reset_pose')
            try:
                reset_episode = rospy.ServiceProxy('reset_pose', Trigger)
                res = reset_episode()
                time.sleep(1)
                return res.message
            except rospy.ServiceException as e:
                print("Service call failed: %s"%e)


    def start_teleop_client(self):
        if rospy.get_param('teleop_state') == 'stop':
            rospy.wait_for_service('start_teleop')
            try:
                start_teleop = rospy.ServiceProxy('start_teleop', Trigger)
                res = start_teleop()
                return res.message
            except rospy.ServiceException as e:
                print("Service call failed: %s"%e)

    def reset(self):
        print(self.reset_episode_client())

        # rospy.wait_for_service("/gazebo/unpause_physics", timeout=2)
        # self.unpause()
        # self.joints_initializer("robot", "", self.joint_names, self.initial_angle)
        # _state = rospy.wait_for_message("/joint_states", JointState, timeout=1.0)
        # return _state.position


    def _additional_state_callback(self):
        """This method is an empthy method for additional sensor informations that child
        classes may add.
        """
        pass


    def _publish_function(self, action):
        self.action_control.publish_all(action)


    def _distance_to_target(self, link, target):
        return np.sqrt(np.sum([(x-y)**2 for x, y in zip(link, target)]))


    def render(self):
        print("In terminal, write; gzclient ") 


    def _get_reward(self, state):
        """ Reward implementation"""
        reward = 0

        rospy.wait_for_message('m_index', Float64)
        m_index = self.m_index
        rospy.wait_for_message('eigen_value', Float64MultiArray)
        e_value = list(self.eigen_value)
        rospy.wait_for_message('self_collision', Bool)
        self_collision = self.self_collision

        e_value.append(m_index)
        e_value.sort()
        #print(e_value)

        # penalty for reaching singularity
        if e_value[0] < 0.03:
            reward -= 1000
            print("singularity!")
        
        # penalty for self collision
        if self_collision == True:
            reward -= 1000
            print("self collision")
           
        # reward for time
        reward += 1
        print(reward)
        return reward

    def close(self):
        pass

