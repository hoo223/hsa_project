# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;actionlib_msgs;cob_srvs;control_toolbox;dynamic_reconfigure;geometry_msgs;interactive_markers;kdl_parser;message_runtime;roscpp;sensor_msgs;std_msgs;std_srvs;tf;visualization_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcob_frame_tracker;-linteractive_frame_target;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0".split(';') if "-lcob_frame_tracker;-linteractive_frame_target;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0" != "" else []
PROJECT_NAME = "cob_frame_tracker"
PROJECT_SPACE_DIR = "/root/share/catkin_ws/install"
PROJECT_VERSION = "0.7.11"
