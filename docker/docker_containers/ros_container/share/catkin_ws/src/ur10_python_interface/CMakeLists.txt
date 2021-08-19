cmake_minimum_required(VERSION 3.0.2)
project(ur10_python_interface)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_EXTENSIONS OFF)

# specify which other CMake packages that need to be found to build our project 
find_package(catkin REQUIRED
  COMPONENTS
    rospy
    std_msgs
    geometry_msgs
    trajectory_msgs
    visualization_msgs
    interactive_markers
    moveit_core
    moveit_visual_tools
    moveit_ros_planning
    moveit_ros_planning_interface
    moveit_ros_perception
    pluginlib
    geometric_shapes
    pcl_ros
    pcl_conversions
    rosbag
    tf2_ros
    tf2_eigen
    tf2_geometry_msgs
    message_generation
    eigen_conversions
)

find_package(Eigen3 REQUIRED)
find_package(Boost REQUIRED system filesystem date_time thread)

set(THIS_PACKAGE_INCLUDE_DIRS
  doc/interactivity/include
  env
)

add_message_files(
  FILES
  Ellipsoid3.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
  LIBRARIES ${PROJECT_NAME}
  INCLUDE_DIRS
  CATKIN_DEPENDS
    moveit_core
    moveit_visual_tools
    moveit_ros_planning_interface
    interactive_markers
    tf2_geometry_msgs
    std_msgs
    geometry_msgs
    trajectory_msgs
    message_runtime
    eigen_conversions
  DEPENDS
    EIGEN3
)


###########
## Build ##
###########

include_directories(${THIS_PACKAGE_INCLUDE_DIRS} ${catkin_INCLUDE_DIRS} ${Boost_INCLUDE_DIR} ${EIGEN3_INCLUDE_DIRS})

add_executable(ik_publisher src/ik_publisher.cpp)
target_link_libraries(ik_publisher ${catkin_LIBRARIES})