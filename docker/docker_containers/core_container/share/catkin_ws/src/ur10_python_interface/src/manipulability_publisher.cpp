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
#include <sensor_msgs/JointState.h>
#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Bool.h>
#include <geometry_msgs/Pose.h>
#include <eigen_conversions/eigen_msg.h>
#include <moveit/kinematics_metrics/kinematics_metrics.h>

#include <moveit/planning_scene/planning_scene.h>

class IK_solver
{
public:
  IK_solver(std::string group_name, std::string prefix)
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
  
    // publisher
    m_index_pub = n.advertise<std_msgs::Float64>("m_index", 10); // manipulability index publisher
    eigen_value_pub = n.advertise<std_msgs::Float64MultiArray>("eigen_value", 10); // target pose ik result publisher
    self_collision_pub = n.advertise<std_msgs::Bool>("self_collision", 10);
    // subscriber
    arm_state_sub = n.subscribe<sensor_msgs::JointState>("/joint_states", 10, boost::bind(&IK_solver::jointStateCallback, this, _1));
    //target_pose_sub = n.subscribe<geometry_msgs::Pose>("/target_pose", 10, boost::bind(&IK_solver::targetPoseCallback, this, _1));
  }

  // callback
  void jointStateCallback(const sensor_msgs::JointStateConstPtr& joint_state);
  void targetPoseCallback(const geometry_msgs::PoseConstPtr& target_pose);

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
  // Handler
  ros::NodeHandle n;
  // Publisher
  ros::Publisher ik_pub;
  ros::Publisher m_index_pub;
  ros::Publisher eigen_value_pub;
  ros::Publisher self_collision_pub;
  // Subscriber
  ros::Subscriber arm_state_sub;
  ros::Subscriber target_pose_sub;

private:

};


int main(int argc, char** argv)
{
  ros::init(argc, argv, "manipulability_publisher", ros::init_options::NoRosout);

  std::string prefix = "";
  if (argc > 1)
    prefix += argv[1];

  ros::AsyncSpinner spinner(1);
  spinner.start();

  IK_solver ik_solver("manipulator", prefix);
  double timeout = 0.1;

  // Get Joint Values
  // ^^^^^^^^^^^^^^^^
  // We can retreive the current set of joint values stored in the state for the Panda arm.
  std::vector<double> joint_values;
  ik_solver.kinematic_state->copyJointGroupPositions(ik_solver.joint_model_group, joint_values);
  for (std::size_t i = 0; i < ik_solver.joint_names.size(); ++i)
  {
    ROS_INFO("Joint %s: %f", ik_solver.joint_names[i].c_str(), joint_values[i]);
  }

  // Get the Manipulalbility Index
  // ^^^^^^^^^^^^^^^^
  // We can also get the Manipulalbility Index 
  double m_index;
  // ik_solver.metrics.getManipulabilityIndex(*ik_solver.kinematic_state, ik_solver.joint_model_group, m_index);
  // ROS_INFO_STREAM("Manipulalbility Index : \n" << m_index << "\n");
  // END_TUTORIAL

  // Get the Manipulability Ellipsoid
  // ^^^^^^^^^^^^^^^^
  // We can also get the Manipulalbility Ellipsoid 
  Eigen::MatrixXcd eigen_values;
  Eigen::MatrixXcd eigen_vectors;
  //ik_solver.metrics.getManipulabilityEllipsoid(*ik_solver.kinematic_state, ik_solver.joint_model_group, eigen_values, eigen_vectors);
  
  // Loop
  clock_t start, end;
  double result, manipulability;
  std_msgs::Float64MultiArray ik_result_msg, e_values_msg;
  ros::Rate loop_rate(250);
  start = clock(); // 측정 시작
  while (ros::ok()){
    
    ik_solver.kinematic_state->setJointGroupPositions(ik_solver.joint_model_group, ik_solver.current_joint_values);
    ik_solver.kinematic_state->enforceBounds();

    // check self collision
    ik_solver.check_self_collision();

    // calculate manipulabilty index
    ik_solver.metrics.getManipulabilityIndex(*ik_solver.kinematic_state, ik_solver.joint_model_group, m_index);
    std_msgs::Float64 m_index_msg;
    m_index_msg.data = m_index;
    ik_solver.m_index_pub.publish(m_index_msg);

    // calculate manipulabilty
    // ik_solver.metrics.getManipulability(*ik_solver.kinematic_state, ik_solver.joint_model_group, manipulability, true);
    // std_msgs::Float64 m_index_msg;
    // m_index_msg.data = manipulability;
    // ik_solver.m_index_pub.publish(m_index_msg);

    // calculate manipulabilty ellipsoid
    ik_solver.metrics.getManipulabilityEllipsoid(*ik_solver.kinematic_state, ik_solver.joint_model_group, eigen_values, eigen_vectors);
    e_values_msg.data.clear();
    e_values_msg.data.push_back(eigen_values(0).real());
    e_values_msg.data.push_back(eigen_values(1).real());
    e_values_msg.data.push_back(eigen_values(2).real());
    ik_solver.eigen_value_pub.publish(e_values_msg);
    //ROS_INFO_STREAM("e_value1: \n" << eigen_values(0) << "\n");  

    ik_solver.kinematic_state->copyJointGroupPositions(ik_solver.joint_model_group, joint_values);

    loop_rate.sleep();
    // end = clock(); // 측정 끝
    // result = (double)(end - start);
    // printf("time: %lf\n", result); //결과 출력
    // start = end;
  }

  ros::shutdown();
  return 0;
}


void IK_solver::jointStateCallback(const sensor_msgs::JointStateConstPtr& joint_state)
{
	current_joint_values[0] = joint_state->position[2]; // shoulder_pan_joint
	current_joint_values[1] = joint_state->position[1]; // shoulder_lift_joint
	current_joint_values[2] = joint_state->position[0]; // elbow joint
	current_joint_values[3] = joint_state->position[3]; // wrist_1_joint
	current_joint_values[4] = joint_state->position[4]; // wrist_2_joint
	current_joint_values[5] = joint_state->position[5]; // wrist_3_joint
}

// void IK_solver::targetPoseCallback(const geometry_msgs::PoseConstPtr& target_pose)
// {
//   //printf("%.3f, %.3f, %.3f", target_pose->position.x, target_pose->position.y, target_pose->position.z);
//   tf::poseMsgToEigen(*target_pose, pose_in);
//   //this->target_pose = *target_pose;
// }

// https://github.com/ros-planning/moveit_tutorials/blob/master/doc/planning_scene/src/planning_scene_tutorial.cpp
void IK_solver::check_self_collision(void)
{
  robot_state::RobotState& current_state = planning_scene.getCurrentStateNonConst();
  current_state.setJointGroupPositions(joint_model_group, current_joint_values);
  collision_result.clear();
  planning_scene.checkSelfCollision(collision_request, collision_result);
  //ROS_INFO_STREAM("Test 1: Current state is " << (collision_result.collision ? "in" : "not in") << " self collision");
  std_msgs::Bool self_collision;
  self_collision.data = collision_result.collision;
  self_collision_pub.publish(self_collision);
}