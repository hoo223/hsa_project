# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cartesian_controller_base;controller_interface;controller_manager;geometry_msgs;hardware_interface;joint_limits_interface;kdl_parser;pluginlib;roscpp;sensor_msgs;urdf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ljoint_to_cartesian_controller".split(';') if "-ljoint_to_cartesian_controller" != "" else []
PROJECT_NAME = "joint_to_cartesian_controller"
PROJECT_SPACE_DIR = "/root/share/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
