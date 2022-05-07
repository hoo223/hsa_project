/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2012, Willow Garage, Inc.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of Willow Garage nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *********************************************************************/

/* Author: Sachin Chitta, Michael Lautman*/

#include <ros/ros.h>
#include <time.h> 

// MoveIt
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>
#include <moveit/kinematics_metrics/kinematics_metrics.h>
#include <moveit/planning_scene/planning_scene.h>
// Messages
#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Bool.h>
#include <geometry_msgs/Pose.h>
#include <sensor_msgs/JointState.h>
// Services
#include <ur10_python_interface/SolveIk.h>
// Etc
#include <eigen_conversions/eigen_msg.h>

class Move_Group_Interface
{
public:
  Move_Group_Interface(std::string group_name, std::string prefix)
  : PLANNING_GROUP(group_name),
    prefix(prefix),
    robot_model_loader(robot_model_loader::RobotModelLoader(prefix+"/robot_description")),
    kinematic_model(robot_model_loader.getModel()),
    planning_scene(kinematic_model),
    model(robot_model_loader.getModel()),
    state(*new moveit::core::RobotState(model)),
    //group(model->getJointModelGroup(PLANNING_GROUP))
    metrics(model)
  {
    ROS_INFO("Model frame: %s", kinematic_model->getModelFrame().c_str());
    kinematic_state = moveit::core::RobotStatePtr(new moveit::core::RobotState(kinematic_model));
    kinematic_state->setToDefaultValues();
    joint_model_group = kinematic_model->getJointModelGroup(PLANNING_GROUP);
    
    joint_names = joint_model_group->getVariableNames();
    current_joint_values.resize(6);

    if (n.getParam("/with_gripper", with_gripper)){
      ROS_INFO("With gripper");
    }
    else{
      ROS_INFO("Without gripper");
    }
  
    // subscriber
    if(with_gripper)
      arm_state_sub = n.subscribe<sensor_msgs::JointState>(prefix+"/joint_states", 10, boost::bind(&Move_Group_Interface::jointStateWithGripperCallback, this, _1));
    else
      arm_state_sub = n.subscribe<sensor_msgs::JointState>(prefix+"/joint_states", 10, boost::bind(&Move_Group_Interface::jointStateCallback, this, _1));
    //target_pose_sub = n.subscribe<geometry_msgs::Pose>("/target_pose", 10, boost::bind(&Move_Group_Interface::targetPoseCallback, this, _1));

    // publisher
    m_index_pub = n.advertise<std_msgs::Float64>("m_index", 10); // manipulability index publisher
    eigen_value_pub = n.advertise<std_msgs::Float64MultiArray>("eigen_value", 10); // target pose ik result publisher
    self_collision_pub = n.advertise<std_msgs::Bool>("self_collision", 10);
    
  }

  // callback
  void jointStateCallback(const sensor_msgs::JointStateConstPtr& joint_state);
  void jointStateWithGripperCallback(const sensor_msgs::JointStateConstPtr& joint_state);
  void targetPoseCallback(const geometry_msgs::PoseConstPtr& target_pose);
  bool solve_ik(ur10_python_interface::SolveIk::Request &req, ur10_python_interface::SolveIk::Response &res);

  // method
  void check_self_collision(void);

  robot_model_loader::RobotModelLoader robot_model_loader;
  moveit::core::RobotModelPtr kinematic_model;
  moveit::core::RobotStatePtr kinematic_state;
  robot_state::JointModelGroup* joint_model_group; 
  planning_scene::PlanningScene planning_scene;

  const moveit::core::RobotModelConstPtr& model;
  const moveit::core::RobotState& state;
  //const moveit::core::JointModelGroup* group;
  kinematics_metrics::KinematicsMetrics metrics;

  std::string PLANNING_GROUP;
  std::string prefix;
  collision_detection::CollisionRequest collision_request;
  collision_detection::CollisionResult collision_result;
  std::vector<std::string> joint_names;
  std::vector<double> current_joint_values;
  geometry_msgs::Pose target_pose;
  Eigen::Isometry3d pose_in;
  std_msgs::Float64MultiArray ik_result_msg, e_values_msg;
  std::vector<double> joint_values;
  bool with_gripper;

  // Handler
  ros::NodeHandle n;

  // Subscriber
  ros::Subscriber arm_state_sub;
  ros::Subscriber target_pose_sub;  
  ros::Publisher m_index_pub;
  ros::Publisher eigen_value_pub;
  ros::Publisher self_collision_pub;
  

private:

};

bool Move_Group_Interface::solve_ik(ur10_python_interface::SolveIk::Request &req, 
              ur10_python_interface::SolveIk::Response &res)
{
  // find ik
  kinematic_state->setJointGroupPositions(joint_model_group, current_joint_values);
  kinematic_state->enforceBounds();
  tf::poseMsgToEigen(req.end_pose, pose_in);
  bool found_ik = kinematic_state->setFromIK(joint_model_group, pose_in, 0.1);
  kinematic_state->update(); // https://github.com/ros-planning/moveit/pull/188
  
  // Now, we can print out the IK solution (if found):
  if (found_ik)
  {
    kinematic_state->copyJointGroupPositions(joint_model_group, joint_values);
    ROS_INFO("found IK solution");
    // publish result
    res.ik_result.data.clear();
    res.ik_result.data.push_back(joint_values[0]);
    res.ik_result.data.push_back(joint_values[1]);
    res.ik_result.data.push_back(joint_values[2]);
    res.ik_result.data.push_back(joint_values[3]);
    res.ik_result.data.push_back(joint_values[4]);
    res.ik_result.data.push_back(joint_values[5]);
    res.success = true;
  }
  else
  {
    res.success = false; 
    ROS_INFO("Did not find IK solution");
  }
  return true;
}

void Move_Group_Interface::jointStateCallback(const sensor_msgs::JointStateConstPtr& joint_state)
{
	current_joint_values[0] = joint_state->position[2]; // shoulder_pan_joint
	current_joint_values[1] = joint_state->position[1]; // shoulder_lift_joint
	current_joint_values[2] = joint_state->position[0]; // elbow joint
	current_joint_values[3] = joint_state->position[3]; // wrist_1_joint
	current_joint_values[4] = joint_state->position[4]; // wrist_2_joint
	current_joint_values[5] = joint_state->position[5]; // wrist_3_joint
  // ROS_INFO_STREAM("joint1: \n" << current_joint_values[0] << "\n");  
}

void Move_Group_Interface::jointStateWithGripperCallback(const sensor_msgs::JointStateConstPtr& joint_state)
{
  current_joint_values[0] = joint_state->position[3]; // shoulder_pan_joint
	current_joint_values[1] = joint_state->position[2]; // shoulder_lift_joint
	current_joint_values[2] = joint_state->position[0]; // elbow joint
	current_joint_values[3] = joint_state->position[4]; // wrist_1_joint
	current_joint_values[4] = joint_state->position[5]; // wrist_2_joint
	current_joint_values[5] = joint_state->position[6]; // wrist_3_joint
}

void Move_Group_Interface::targetPoseCallback(const geometry_msgs::PoseConstPtr& target_pose)
{
  //printf("%.3f, %.3f, %.3f", target_pose->position.x, target_pose->position.y, target_pose->position.z);
  tf::poseMsgToEigen(*target_pose, pose_in);
  //this->target_pose = *target_pose;
}

// https://github.com/ros-planning/moveit_tutorials/blob/master/doc/planning_scene/src/planning_scene_tutorial.cpp
void Move_Group_Interface::check_self_collision(void)
{
  robot_state::RobotState& current_state = planning_scene.getCurrentStateNonConst();
  current_state.setJointGroupPositions(joint_model_group, current_joint_values);
  collision_result.clear();
  planning_scene.checkSelfCollision(collision_request, collision_result);
  ROS_INFO_STREAM("Test 1: Current state is " << (collision_result.collision ? "in" : "not in") << " self collision");
}