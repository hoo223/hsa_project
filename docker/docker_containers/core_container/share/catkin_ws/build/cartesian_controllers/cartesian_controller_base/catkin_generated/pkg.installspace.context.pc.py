# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;controller_interface;kdl_parser;trajectory_msgs;control_toolbox;eigen_conversions;dynamic_reconfigure;pluginlib".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcartesian_controller_base;-lik_solvers".split(';') if "-lcartesian_controller_base;-lik_solvers" != "" else []
PROJECT_NAME = "cartesian_controller_base"
PROJECT_SPACE_DIR = "/root/share/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
