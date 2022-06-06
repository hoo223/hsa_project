# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "acg_control_msg: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iacg_control_msg:/root/share/catkin_ws/devel/share/acg_control_msg/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Iworkspace_trajectory_msgs:/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(acg_control_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg" NAME_WE)
add_custom_target(_acg_control_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "acg_control_msg" "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg" NAME_WE)
add_custom_target(_acg_control_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "acg_control_msg" "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg" "actionlib_msgs/GoalID:acg_control_msg/FollowWorkspaceTrajectoryActionResult:workspace_trajectory_msgs/WorkspaceTrajectory:std_msgs/Duration:actionlib_msgs/GoalStatus:acg_control_msg/FollowWorkspaceTrajectoryActionGoal:geometry_msgs/Vector3:geometry_msgs/Pose:acg_control_msg/FollowWorkspaceTrajectoryResult:acg_control_msg/FollowWorkspaceTrajectoryFeedback:std_msgs/Header:acg_control_msg/FollowWorkspaceTrajectoryGoal:acg_control_msg/FollowWorkspaceTrajectoryActionFeedback:geometry_msgs/Quaternion:geometry_msgs/Wrench:geometry_msgs/Point"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg" NAME_WE)
add_custom_target(_acg_control_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "acg_control_msg" "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg" "workspace_trajectory_msgs/WorkspaceTrajectory:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Wrench:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg" NAME_WE)
add_custom_target(_acg_control_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "acg_control_msg" "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg" "actionlib_msgs/GoalID:workspace_trajectory_msgs/WorkspaceTrajectory:std_msgs/Header:geometry_msgs/Vector3:geometry_msgs/Pose:acg_control_msg/FollowWorkspaceTrajectoryGoal:geometry_msgs/Quaternion:geometry_msgs/Wrench:geometry_msgs/Point"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg" NAME_WE)
add_custom_target(_acg_control_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "acg_control_msg" "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Duration:actionlib_msgs/GoalStatus:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Wrench:acg_control_msg/FollowWorkspaceTrajectoryFeedback"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg" NAME_WE)
add_custom_target(_acg_control_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "acg_control_msg" "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg" "actionlib_msgs/GoalID:acg_control_msg/FollowWorkspaceTrajectoryResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg" NAME_WE)
add_custom_target(_acg_control_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "acg_control_msg" "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg" "std_msgs/Duration:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Wrench:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_cpp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg;/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_cpp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_cpp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_cpp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_cpp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_cpp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acg_control_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(acg_control_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acg_control_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(acg_control_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(acg_control_msg_generate_messages acg_control_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_cpp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_cpp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_cpp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_cpp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_cpp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_cpp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_cpp _acg_control_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(acg_control_msg_gencpp)
add_dependencies(acg_control_msg_gencpp acg_control_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS acg_control_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acg_control_msg
)
_generate_msg_eus(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg;/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acg_control_msg
)
_generate_msg_eus(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acg_control_msg
)
_generate_msg_eus(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acg_control_msg
)
_generate_msg_eus(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acg_control_msg
)
_generate_msg_eus(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acg_control_msg
)
_generate_msg_eus(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acg_control_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(acg_control_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acg_control_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(acg_control_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(acg_control_msg_generate_messages acg_control_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_eus _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_eus _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_eus _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_eus _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_eus _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_eus _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_eus _acg_control_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(acg_control_msg_geneus)
add_dependencies(acg_control_msg_geneus acg_control_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS acg_control_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_lisp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg;/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_lisp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_lisp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_lisp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_lisp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acg_control_msg
)
_generate_msg_lisp(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acg_control_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(acg_control_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acg_control_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(acg_control_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(acg_control_msg_generate_messages acg_control_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_lisp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_lisp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_lisp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_lisp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_lisp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_lisp _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_lisp _acg_control_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(acg_control_msg_genlisp)
add_dependencies(acg_control_msg_genlisp acg_control_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS acg_control_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acg_control_msg
)
_generate_msg_nodejs(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg;/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acg_control_msg
)
_generate_msg_nodejs(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acg_control_msg
)
_generate_msg_nodejs(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acg_control_msg
)
_generate_msg_nodejs(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acg_control_msg
)
_generate_msg_nodejs(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acg_control_msg
)
_generate_msg_nodejs(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acg_control_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(acg_control_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acg_control_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(acg_control_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(acg_control_msg_generate_messages acg_control_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_nodejs _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_nodejs _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_nodejs _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_nodejs _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_nodejs _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_nodejs _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_nodejs _acg_control_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(acg_control_msg_gennodejs)
add_dependencies(acg_control_msg_gennodejs acg_control_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS acg_control_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg
)
_generate_msg_py(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg;/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg
)
_generate_msg_py(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg
)
_generate_msg_py(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg
)
_generate_msg_py(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Duration.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg
)
_generate_msg_py(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg
)
_generate_msg_py(acg_control_msg
  "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg
)

### Generating Services

### Generating Module File
_generate_module_py(acg_control_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(acg_control_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(acg_control_msg_generate_messages acg_control_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryResult.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_py _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryAction.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_py _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryGoal.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_py _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_py _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_py _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryActionResult.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_py _acg_control_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/acg_control_msg/msg/FollowWorkspaceTrajectoryFeedback.msg" NAME_WE)
add_dependencies(acg_control_msg_generate_messages_py _acg_control_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(acg_control_msg_genpy)
add_dependencies(acg_control_msg_genpy acg_control_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS acg_control_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acg_control_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/acg_control_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(acg_control_msg_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET workspace_trajectory_msgs_generate_messages_cpp)
  add_dependencies(acg_control_msg_generate_messages_cpp workspace_trajectory_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acg_control_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/acg_control_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(acg_control_msg_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET workspace_trajectory_msgs_generate_messages_eus)
  add_dependencies(acg_control_msg_generate_messages_eus workspace_trajectory_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acg_control_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/acg_control_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(acg_control_msg_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET workspace_trajectory_msgs_generate_messages_lisp)
  add_dependencies(acg_control_msg_generate_messages_lisp workspace_trajectory_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acg_control_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/acg_control_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(acg_control_msg_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET workspace_trajectory_msgs_generate_messages_nodejs)
  add_dependencies(acg_control_msg_generate_messages_nodejs workspace_trajectory_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/acg_control_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(acg_control_msg_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET workspace_trajectory_msgs_generate_messages_py)
  add_dependencies(acg_control_msg_generate_messages_py workspace_trajectory_msgs_generate_messages_py)
endif()
