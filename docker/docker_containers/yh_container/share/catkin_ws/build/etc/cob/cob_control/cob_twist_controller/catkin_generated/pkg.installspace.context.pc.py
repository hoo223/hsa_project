# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "cob_control_msgs;cob_srvs;dynamic_reconfigure;eigen_conversions;geometry_msgs;kdl_conversions;kdl_parser;nav_msgs;pluginlib;roscpp;sensor_msgs;std_msgs;tf;tf_conversions;trajectory_msgs;urdf;visualization_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ldamping_methods;-linv_calculations;-lconstraint_solvers;-llimiters;-lcontroller_interfaces;-lkinematic_extensions;-linverse_differential_kinematics_solver;-ltwist_controller;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0".split(';') if "-ldamping_methods;-linv_calculations;-lconstraint_solvers;-llimiters;-lcontroller_interfaces;-lkinematic_extensions;-linverse_differential_kinematics_solver;-ltwist_controller;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0" != "" else []
PROJECT_NAME = "cob_twist_controller"
PROJECT_SPACE_DIR = "/root/share/catkin_ws/install"
PROJECT_VERSION = "0.7.11"
