# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;cartesian_controller_base;dynamic_reconfigure".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lcartesian_force_controller".split(';') if "-lcartesian_force_controller" != "" else []
PROJECT_NAME = "cartesian_force_controller"
PROJECT_SPACE_DIR = "/root/share/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
