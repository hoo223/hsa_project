# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "moveit_core;moveit_visual_tools;moveit_ros_planning_interface;interactive_markers;tf2_geometry_msgs;std_msgs;geometry_msgs;trajectory_msgs;message_runtime;eigen_conversions".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lur10_python_interface".split(';') if "-lur10_python_interface" != "" else []
PROJECT_NAME = "ur10_python_interface"
PROJECT_SPACE_DIR = "/root/share/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
