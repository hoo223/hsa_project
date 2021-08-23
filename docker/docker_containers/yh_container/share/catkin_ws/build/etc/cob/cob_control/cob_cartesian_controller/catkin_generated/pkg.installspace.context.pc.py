# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;actionlib_msgs;cob_srvs;geometry_msgs;message_runtime;roscpp;std_msgs;std_srvs;tf;visualization_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lprofile_generator;-ltrajectory_interpolator;-lcartesian_controller;-lcartesian_controller_utils".split(';') if "-lprofile_generator;-ltrajectory_interpolator;-lcartesian_controller;-lcartesian_controller_utils" != "" else []
PROJECT_NAME = "cob_cartesian_controller"
PROJECT_SPACE_DIR = "/root/share/catkin_ws/install"
PROJECT_VERSION = "0.7.11"
