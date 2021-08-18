# Install script for directory: /root/share/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/share/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/share/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/share/catkin_ws/install" TYPE PROGRAM FILES "/root/share/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/share/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/share/catkin_ws/install" TYPE PROGRAM FILES "/root/share/catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/share/catkin_ws/install/setup.bash;/root/share/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/share/catkin_ws/install" TYPE FILE FILES
    "/root/share/catkin_ws/build/catkin_generated/installspace/setup.bash"
    "/root/share/catkin_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/share/catkin_ws/install/setup.sh;/root/share/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/share/catkin_ws/install" TYPE FILE FILES
    "/root/share/catkin_ws/build/catkin_generated/installspace/setup.sh"
    "/root/share/catkin_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/share/catkin_ws/install/setup.zsh;/root/share/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/share/catkin_ws/install" TYPE FILE FILES
    "/root/share/catkin_ws/build/catkin_generated/installspace/setup.zsh"
    "/root/share/catkin_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/root/share/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/root/share/catkin_ws/install" TYPE FILE FILES "/root/share/catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/share/catkin_ws/build/gtest/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_planners/moveit_planners/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_plugins/moveit_plugins/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/moveit_ros/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_runtime/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_bringup/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_description/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_moveit_config/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_urdf/cmake_install.cmake")
  include("/root/share/catkin_ws/build/rqt_joint_trajectory_controller/cmake_install.cmake")
  include("/root/share/catkin_ws/build/unity/unity_robotics_demo_msgs/cmake_install.cmake")
  include("/root/share/catkin_ws/build/universal_robot/universal_robot/cmake_install.cmake")
  include("/root/share/catkin_ws/build/universal_robot/universal_robots/cmake_install.cmake")
  include("/root/share/catkin_ws/build/universal_robot/ur_description/cmake_install.cmake")
  include("/root/share/catkin_ws/build/universal_robot/ur_msgs/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/dynamixel_sdk/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/mcp_can_rpi/cmake_install.cmake")
  include("/root/share/catkin_ws/build/unity/ROS-TCP-Endpoint/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_camera/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_moveit/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_msgs/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_camera_jevois/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_debug/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_driver/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_modbus/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_rpi/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_tools/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_commander/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_pose_converter/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_python_api/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_tcp_server/cmake_install.cmake")
  include("/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_user_interface/cmake_install.cmake")
  include("/root/share/catkin_ws/build/unity/unity_robotics_demo/cmake_install.cmake")
  include("/root/share/catkin_ws/build/unity/unity_ros_control/cmake_install.cmake")
  include("/root/share/catkin_ws/build/universal_robot/ur_bringup/cmake_install.cmake")
  include("/root/share/catkin_ws/build/universal_robot/ur_driver/cmake_install.cmake")
  include("/root/share/catkin_ws/build/universal_robot/ur_gazebo/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_commander/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_planners/chomp/chomp_motion_planner/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_planners/chomp/chomp_optimizer_adapter/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/occupancy_map_monitor/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/planning/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_plugins/moveit_fake_controller_manager/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_kinematics/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_planners/ompl/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/move_group/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/manipulation/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/perception/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/robot_interaction/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/warehouse/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/benchmarks/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/planning_interface/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_planners/chomp/chomp_interface/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/visualization/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_ros/moveit_servo/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_setup_assistant/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_plugins/moveit_simple_controller_manager/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_plugins/moveit_ros_control_interface/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_planners/pilz_industrial_motion_planner_testutils/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_planners/pilz_industrial_motion_planner/cmake_install.cmake")
  include("/root/share/catkin_ws/build/universal_robot/ur10_moveit_config/cmake_install.cmake")
  include("/root/share/catkin_ws/build/ur10_python_interface/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/root/share/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
