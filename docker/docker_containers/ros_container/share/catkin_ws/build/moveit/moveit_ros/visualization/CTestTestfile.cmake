# CMake generated Testfile for 
# Source directory: /root/share/catkin_ws/src/moveit/moveit_ros/visualization
# Build directory: /root/share/catkin_ws/build/moveit/moveit_ros/visualization
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_moveit_ros_visualization_rostest_test_moveit_joy.test "/root/share/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/root/share/catkin_ws/build/test_results/moveit_ros_visualization/rostest-test_moveit_joy.xml" "--return-code" "/usr/bin/python3 /opt/ros/noetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/root/share/catkin_ws/src/moveit/moveit_ros/visualization --package=moveit_ros_visualization --results-filename test_moveit_joy.xml --results-base-dir \"/root/share/catkin_ws/build/test_results\" /root/share/catkin_ws/src/moveit/moveit_ros/visualization/test/moveit_joy.test ")
set_tests_properties(_ctest_moveit_ros_visualization_rostest_test_moveit_joy.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/root/share/catkin_ws/src/moveit/moveit_ros/visualization/CMakeLists.txt;124;add_rostest;/root/share/catkin_ws/src/moveit/moveit_ros/visualization/CMakeLists.txt;0;")
subdirs("rviz_plugin_render_tools")
subdirs("robot_state_rviz_plugin")
subdirs("planning_scene_rviz_plugin")
subdirs("motion_planning_rviz_plugin")
subdirs("trajectory_rviz_plugin")
