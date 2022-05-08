// ROS
#include <ros/ros.h>
// ROS Messages
#include <geometry_msgs/Pose.h>
// Etc
#include <time.h> 
#include <eigen_conversions/eigen_msg.h>
// Custom
#include <move_group_interface.h> // Move_Group_Interface class


int main(int argc, char** argv)
{
  if(ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME, ros::console::levels::Debug))
  {
    ros::console::notifyLoggerLevelsChanged();
  }
  ros::init(argc, argv, "move_group_interface_example", ros::init_options::NoRosout);
  ros::NodeHandle n;

  std::string prefix = "/"; // / 꼭 넣기 
  if (argc > 1)
    prefix += argv[1];

  ros::AsyncSpinner spinner(1);
  spinner.start();

  Move_Group_Interface move_group_interface("manipulator", prefix);
  double timeout = 0.1;

  // Get Joint Values
  // ^^^^^^^^^^^^^^^^
  // We can retreive the current set of joint values stored in the state for the Panda arm.
  std::vector<double> joint_values;
  move_group_interface.kinematic_state->copyJointGroupPositions(move_group_interface.joint_model_group, joint_values);
  for (std::size_t i = 0; i < move_group_interface.joint_names.size(); ++i)
  {
    ROS_INFO("Joint %s: %f", move_group_interface.joint_names[i].c_str(), joint_values[i]);
  }

  // Joint Limits
  // ^^^^^^^^^^^^
  // setJointGroupPositions() does not enforce joint limits by itself, but a call to enforceBounds() will do it.
  /* Set one joint in the Panda arm outside its joint limit */
  joint_values[0] = 5.57;
  move_group_interface.kinematic_state->setJointGroupPositions(move_group_interface.joint_model_group, joint_values);

  /* Check whether any joint is outside its joint limits */
  ROS_INFO_STREAM("Current state is " << (move_group_interface.kinematic_state->satisfiesBounds() ? "valid" : "not valid"));

  /* Enforce the joint limits for this state and check again*/
  move_group_interface.kinematic_state->enforceBounds();
  ROS_INFO_STREAM("Current state is " << (move_group_interface.kinematic_state->satisfiesBounds() ? "valid" : "not valid"));

  // Forward Kinematics ------------------------------------------------------------------------------------------------------------------------------
  // ^^^^^^^^^^^^^^^^^^
  // Now, we can compute forward kinematics for a set of random joint
  // values. Note that we would like to find the pose of the
  // "panda_link8" which is the most distal link in the
  // "panda_arm" group of the robot.
  move_group_interface.kinematic_state->setToRandomPositions(move_group_interface.joint_model_group);
  const Eigen::Isometry3d& end_effector_state = move_group_interface.kinematic_state->getGlobalLinkTransform("ee_link");

  /* Print end-effector pose. Remember that this is in the model frame */
  ROS_INFO_STREAM("Translation: \n" << end_effector_state.translation() << "\n");
  ROS_INFO_STREAM("Rotation: \n" << end_effector_state.rotation() << "\n");

  // Get the Jacobian ------------------------------------------------------------------------------------------------------------------------------
  // ^^^^^^^^^^^^^^^^
  // We can also get the Jacobian from the :moveit_core:`RobotState`.
  Eigen::Vector3d reference_point_position(0.0, 0.0, 0.0);
  Eigen::MatrixXd jacobian;
  move_group_interface.kinematic_state->getJacobian(move_group_interface.joint_model_group,
                               move_group_interface.kinematic_state->getLinkModel(move_group_interface.joint_model_group->getLinkModelNames().back()),
                               reference_point_position, jacobian);
  ROS_INFO_STREAM("Jacobian: \n" << jacobian << "\n");
  ROS_INFO_STREAM("Inverse Jacobian: \n" << jacobian.inverse() << "\n");


  // Get the Manipulabilty ------------------------------------------------------------------------------------------------------------------------------
  // ^^^^^^^^^^^^^^^^
  // We can also get the Manipulalbility 
  double manipulability;
  move_group_interface.kinematic_state->update(); // https://github.com/ros-planning/moveit/pull/188
  move_group_interface.metrics.getManipulability(*move_group_interface.kinematic_state, move_group_interface.joint_model_group, manipulability, true);
  ROS_INFO_STREAM("Manipulalbility : \n" << manipulability << "\n");


  // Get the Manipulalbility Index ------------------------------------------------------------------------------------------------------------------------------
  // ^^^^^^^^^^^^^^^^
  // We can also get the Manipulalbility Index 
  double m_index;
  move_group_interface.metrics.getManipulabilityIndex(*move_group_interface.kinematic_state, move_group_interface.joint_model_group, m_index);
  ROS_INFO_STREAM("Manipulalbility Index : \n" << m_index << "\n");
  // END_TUTORIAL

  // Get the Manipulability Ellipsoid ------------------------------------------------------------------------------------------------------------------------------
  // ^^^^^^^^^^^^^^^^
  // We can also get the Manipulalbility Ellipsoid 
  Eigen::MatrixXcd eigen_values;
  Eigen::MatrixXcd eigen_vectors;
  move_group_interface.metrics.getManipulabilityEllipsoid(*move_group_interface.kinematic_state, move_group_interface.joint_model_group, eigen_values, eigen_vectors);
  ROS_INFO_STREAM("eigen_values size : \n" << eigen_values.rows() << " x " << eigen_values.cols() << "\n");
  ROS_INFO_STREAM("eigen_vectors size : \n" << eigen_vectors.rows() << " x " << eigen_vectors.cols() << "\n");

  // Check Self Collision ------------------------------------------------------------------------------------------------------------------------------
  // ^^^^^^^^^^^^^^^^
  // We can also get the Self Collision 
  move_group_interface.check_self_collision();

  // Find IK ------------------------------------------------------------------------------------------------------------------------------
  // ^^^^^^^^^^^^^^^^
  // We can also get the IK 
  move_group_interface.kinematic_state->setJointGroupPositions(move_group_interface.joint_model_group, move_group_interface.current_joint_values);
  move_group_interface.kinematic_state->enforceBounds();
  geometry_msgs::Pose end_pose;
  end_pose.position.x = 0.180256416948;
  end_pose.position.y = 0.53379531;
  end_pose.position.z = 0.49639836;
  end_pose.orientation.x = -0.462355546755;
  end_pose.orientation.y = 0.523144966442;
  end_pose.orientation.z = 0.475715667668;
  end_pose.orientation.w = 0.535015229695;
  tf::poseMsgToEigen(end_pose, move_group_interface.pose_in); // geometry_msgs::Pose to Eigen::Isometry3d
  bool found_ik = move_group_interface.kinematic_state->setFromIK(move_group_interface.joint_model_group, move_group_interface.pose_in, 0.1);
  move_group_interface.kinematic_state->update(); // https://github.com/ros-planning/moveit/pull/188
  // Now, we can print out the IK solution (if found):
  if (found_ik){
    move_group_interface.kinematic_state->copyJointGroupPositions(move_group_interface.joint_model_group, joint_values);
    ROS_INFO("found IK solution");
  }
  else{
    ROS_INFO("Did not find IK solution");
  }

  // // Time check
  // clock_t start, end;
  // double result;
  // start = clock(); // 측정 시작
  // end = clock(); // 측정 끝
  // result = (double)(end - start);
  // printf("time: %lf\n", result); // 결과 출력

  ros::shutdown();
  return 0;
}