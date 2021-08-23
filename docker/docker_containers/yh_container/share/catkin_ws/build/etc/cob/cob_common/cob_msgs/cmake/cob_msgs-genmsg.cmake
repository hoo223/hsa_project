# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_msgs: 6 messages, 0 services")

set(MSG_I_FLAGS "-Icob_msgs:/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg;-Idiagnostic_msgs:/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg" NAME_WE)
add_custom_target(_cob_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_msgs" "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg" "std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg" NAME_WE)
add_custom_target(_cob_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_msgs" "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg" "diagnostic_msgs/KeyValue:cob_msgs/PowerState:diagnostic_msgs/DiagnosticStatus:std_msgs/Header:cob_msgs/EmergencyStopState"
)

get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg" NAME_WE)
add_custom_target(_cob_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_msgs" "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg" NAME_WE)
add_custom_target(_cob_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_msgs" "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg" NAME_WE)
add_custom_target(_cob_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_msgs" "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg" NAME_WE)
add_custom_target(_cob_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_msgs" "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg" "cob_msgs/Network:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_msgs
)
_generate_msg_cpp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg/KeyValue.msg;/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg;/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg/DiagnosticStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_msgs
)
_generate_msg_cpp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_msgs
)
_generate_msg_cpp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_msgs
)
_generate_msg_cpp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_msgs
)
_generate_msg_cpp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(cob_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_msgs_generate_messages cob_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_cpp _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_cpp _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_cpp _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_cpp _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_cpp _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_cpp _cob_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_msgs_gencpp)
add_dependencies(cob_msgs_gencpp cob_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_msgs
)
_generate_msg_eus(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg/KeyValue.msg;/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg;/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg/DiagnosticStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_msgs
)
_generate_msg_eus(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_msgs
)
_generate_msg_eus(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_msgs
)
_generate_msg_eus(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_msgs
)
_generate_msg_eus(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(cob_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cob_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cob_msgs_generate_messages cob_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_eus _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_eus _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_eus _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_eus _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_eus _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_eus _cob_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_msgs_geneus)
add_dependencies(cob_msgs_geneus cob_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_msgs
)
_generate_msg_lisp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg/KeyValue.msg;/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg;/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg/DiagnosticStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_msgs
)
_generate_msg_lisp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_msgs
)
_generate_msg_lisp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_msgs
)
_generate_msg_lisp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_msgs
)
_generate_msg_lisp(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(cob_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_msgs_generate_messages cob_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_lisp _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_lisp _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_lisp _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_lisp _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_lisp _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_lisp _cob_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_msgs_genlisp)
add_dependencies(cob_msgs_genlisp cob_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_msgs
)
_generate_msg_nodejs(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg/KeyValue.msg;/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg;/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg/DiagnosticStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_msgs
)
_generate_msg_nodejs(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_msgs
)
_generate_msg_nodejs(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_msgs
)
_generate_msg_nodejs(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_msgs
)
_generate_msg_nodejs(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cob_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cob_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cob_msgs_generate_messages cob_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_nodejs _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_nodejs _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_nodejs _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_nodejs _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_nodejs _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_nodejs _cob_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_msgs_gennodejs)
add_dependencies(cob_msgs_gennodejs cob_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_msgs
)
_generate_msg_py(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg/KeyValue.msg;/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg;/opt/ros/noetic/share/diagnostic_msgs/cmake/../msg/DiagnosticStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_msgs
)
_generate_msg_py(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_msgs
)
_generate_msg_py(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_msgs
)
_generate_msg_py(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_msgs
)
_generate_msg_py(cob_msgs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(cob_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_msgs_generate_messages cob_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/AccessPoint.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_py _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/DashboardState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_py _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/EmergencyStopState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_py _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/Network.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_py _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/PowerState.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_py _cob_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_msgs/msg/SiteSurvey.msg" NAME_WE)
add_dependencies(cob_msgs_generate_messages_py _cob_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_msgs_genpy)
add_dependencies(cob_msgs_genpy cob_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET diagnostic_msgs_generate_messages_cpp)
  add_dependencies(cob_msgs_generate_messages_cpp diagnostic_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cob_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET diagnostic_msgs_generate_messages_eus)
  add_dependencies(cob_msgs_generate_messages_eus diagnostic_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cob_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET diagnostic_msgs_generate_messages_lisp)
  add_dependencies(cob_msgs_generate_messages_lisp diagnostic_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cob_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET diagnostic_msgs_generate_messages_nodejs)
  add_dependencies(cob_msgs_generate_messages_nodejs diagnostic_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cob_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET diagnostic_msgs_generate_messages_py)
  add_dependencies(cob_msgs_generate_messages_py diagnostic_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cob_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
