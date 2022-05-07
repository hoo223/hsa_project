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
  ros::init(argc, argv, "ik_publisher", ros::init_options::NoRosout);
  ros::NodeHandle n;

  std::string prefix = "/"; // / 꼭 넣기 
  if (argc > 1)
    prefix += argv[1];

  ros::AsyncSpinner spinner(1);
  spinner.start();

  // move_group interface 
  Move_Group_Interface move_group_interface("manipulator", prefix);

  // IK service
  ros::ServiceServer ik_service = n.advertiseService("solve_ik", &Move_Group_Interface::solve_ik, &move_group_interface);

  // Loop
  clock_t start, end;
  double result, manipulability;
  std_msgs::Float64MultiArray ik_result_msg, e_values_msg;
  ros::Rate loop_rate(250);
  // start = clock(); // 측정 시작
  while (ros::ok()){
    loop_rate.sleep();
    // end = clock(); // 측정 끝
    // result = (double)(end - start);
    // printf("time: %lf\n", result); //결과 출력
    // start = end;
  }

  ros::shutdown();
  return 0;
}