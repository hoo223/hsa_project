# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include;/opt/ros/noetic/include".split(';') if "${prefix}/include;/usr/include;/opt/ros/noetic/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;control_msgs;controller_manager;geometry_msgs;hardware_interface;pluginlib;roscpp;sensor_msgs;tf;tf2_geometry_msgs;tf2_msgs;trajectory_msgs;ur_controllers;ur_dashboard_msgs;ur_msgs;std_srvs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lur_robot_driver_plugin;-lurcl_log_handler;/opt/ros/noetic/lib/x86_64-linux-gnu/liburcl.so".split(';') if "-lur_robot_driver_plugin;-lurcl_log_handler;/opt/ros/noetic/lib/x86_64-linux-gnu/liburcl.so" != "" else []
PROJECT_NAME = "ur_robot_driver"
PROJECT_SPACE_DIR = "/root/share/catkin_ws/install"
PROJECT_VERSION = "0.0.3"
