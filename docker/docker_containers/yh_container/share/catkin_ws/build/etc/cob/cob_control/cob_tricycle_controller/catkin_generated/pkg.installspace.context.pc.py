# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "angles;cob_base_controller_utils;controller_interface;geometry_msgs;hardware_interface;nav_msgs;pluginlib;realtime_tools;roscpp;std_srvs;tf".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcob_tricycle_controller;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0".split(';') if "-lcob_tricycle_controller;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0" != "" else []
PROJECT_NAME = "cob_tricycle_controller"
PROJECT_SPACE_DIR = "/root/share/catkin_ws/install"
PROJECT_VERSION = "0.7.11"
