# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_script_server: 15 messages, 1 services")

set(MSG_I_FLAGS "-Icob_script_server:/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg;-Icob_script_server:/root/share/catkin_ws/devel/share/cob_script_server/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_script_server_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg" "cob_script_server/ScriptFeedback:actionlib_msgs/GoalID:cob_script_server/ScriptActionFeedback:std_msgs/Header:cob_script_server/ScriptActionResult:cob_script_server/ScriptGoal:cob_script_server/ScriptActionGoal:cob_script_server/ScriptResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:cob_script_server/ScriptGoal"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg" "cob_script_server/ScriptResult:std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg" "cob_script_server/ScriptFeedback:std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg" "cob_script_server/StateResult:actionlib_msgs/GoalID:cob_script_server/StateFeedback:cob_script_server/ScriptState:cob_script_server/StateActionGoal:std_msgs/Header:cob_script_server/StateActionFeedback:cob_script_server/StateActionResult:actionlib_msgs/GoalStatus:cob_script_server/StateGoal"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg" "cob_script_server/ScriptState:std_msgs/Header:actionlib_msgs/GoalID:cob_script_server/StateGoal"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg" "cob_script_server/StateResult:std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg" "cob_script_server/StateFeedback:std_msgs/Header:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg" "std_msgs/Header:cob_script_server/ScriptState"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv" NAME_WE)
add_custom_target(_cob_script_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_script_server" "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv" "trajectory_msgs/JointTrajectory:std_msgs/Header:trajectory_msgs/JointTrajectoryPoint"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg;/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)
_generate_msg_cpp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)

### Generating Services
_generate_srv_cpp(cob_script_server
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
)

### Generating Module File
_generate_module_cpp(cob_script_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_script_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_script_server_generate_messages cob_script_server_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv" NAME_WE)
add_dependencies(cob_script_server_generate_messages_cpp _cob_script_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_script_server_gencpp)
add_dependencies(cob_script_server_gencpp cob_script_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_script_server_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg;/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)
_generate_msg_eus(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)

### Generating Services
_generate_srv_eus(cob_script_server
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
)

### Generating Module File
_generate_module_eus(cob_script_server
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cob_script_server_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cob_script_server_generate_messages cob_script_server_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv" NAME_WE)
add_dependencies(cob_script_server_generate_messages_eus _cob_script_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_script_server_geneus)
add_dependencies(cob_script_server_geneus cob_script_server_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_script_server_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg;/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)
_generate_msg_lisp(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)

### Generating Services
_generate_srv_lisp(cob_script_server
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
)

### Generating Module File
_generate_module_lisp(cob_script_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_script_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_script_server_generate_messages cob_script_server_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv" NAME_WE)
add_dependencies(cob_script_server_generate_messages_lisp _cob_script_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_script_server_genlisp)
add_dependencies(cob_script_server_genlisp cob_script_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_script_server_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg;/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)
_generate_msg_nodejs(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)

### Generating Services
_generate_srv_nodejs(cob_script_server
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
)

### Generating Module File
_generate_module_nodejs(cob_script_server
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cob_script_server_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cob_script_server_generate_messages cob_script_server_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv" NAME_WE)
add_dependencies(cob_script_server_generate_messages_nodejs _cob_script_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_script_server_gennodejs)
add_dependencies(cob_script_server_gennodejs cob_script_server_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_script_server_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg;/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)
_generate_msg_py(cob_script_server
  "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)

### Generating Services
_generate_srv_py(cob_script_server
  "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
)

### Generating Module File
_generate_module_py(cob_script_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_script_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_script_server_generate_messages cob_script_server_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv" NAME_WE)
add_dependencies(cob_script_server_generate_messages_py _cob_script_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_script_server_genpy)
add_dependencies(cob_script_server_genpy cob_script_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_script_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_script_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(cob_script_server_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(cob_script_server_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_script_server
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(cob_script_server_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(cob_script_server_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_script_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(cob_script_server_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(cob_script_server_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_script_server
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(cob_script_server_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(cob_script_server_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_script_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(cob_script_server_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(cob_script_server_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
