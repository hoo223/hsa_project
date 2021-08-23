# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_frame_tracker: 7 messages, 0 services")

set(MSG_I_FLAGS "-Icob_frame_tracker:/root/share/catkin_ws/devel/share/cob_frame_tracker/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_frame_tracker_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg" NAME_WE)
add_custom_target(_cob_frame_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_frame_tracker" "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg" "geometry_msgs/Twist:actionlib_msgs/GoalStatus:std_msgs/Header:cob_frame_tracker/FrameTrackingGoal:geometry_msgs/Vector3:cob_frame_tracker/FrameTrackingActionResult:cob_frame_tracker/FrameTrackingResult:cob_frame_tracker/FrameTrackingActionFeedback:cob_frame_tracker/FrameTrackingActionGoal:cob_frame_tracker/FrameTrackingFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg" NAME_WE)
add_custom_target(_cob_frame_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_frame_tracker" "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:cob_frame_tracker/FrameTrackingGoal"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg" NAME_WE)
add_custom_target(_cob_frame_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_frame_tracker" "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg" "std_msgs/Header:actionlib_msgs/GoalID:cob_frame_tracker/FrameTrackingResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg" NAME_WE)
add_custom_target(_cob_frame_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_frame_tracker" "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg" "geometry_msgs/Twist:actionlib_msgs/GoalStatus:std_msgs/Header:geometry_msgs/Vector3:cob_frame_tracker/FrameTrackingFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg" NAME_WE)
add_custom_target(_cob_frame_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_frame_tracker" "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg" NAME_WE)
add_custom_target(_cob_frame_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_frame_tracker" "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg" NAME_WE)
add_custom_target(_cob_frame_tracker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_frame_tracker" "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_cpp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_cpp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_cpp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_cpp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_cpp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_cpp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_frame_tracker
)

### Generating Services

### Generating Module File
_generate_module_cpp(cob_frame_tracker
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_frame_tracker
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_frame_tracker_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_frame_tracker_generate_messages cob_frame_tracker_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_cpp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_cpp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_cpp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_cpp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_cpp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_cpp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_cpp _cob_frame_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_frame_tracker_gencpp)
add_dependencies(cob_frame_tracker_gencpp cob_frame_tracker_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_frame_tracker_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_eus(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_eus(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_eus(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_eus(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_eus(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_eus(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_frame_tracker
)

### Generating Services

### Generating Module File
_generate_module_eus(cob_frame_tracker
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_frame_tracker
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cob_frame_tracker_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cob_frame_tracker_generate_messages cob_frame_tracker_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_eus _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_eus _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_eus _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_eus _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_eus _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_eus _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_eus _cob_frame_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_frame_tracker_geneus)
add_dependencies(cob_frame_tracker_geneus cob_frame_tracker_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_frame_tracker_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_lisp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_lisp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_lisp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_lisp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_lisp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_lisp(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_frame_tracker
)

### Generating Services

### Generating Module File
_generate_module_lisp(cob_frame_tracker
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_frame_tracker
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_frame_tracker_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_frame_tracker_generate_messages cob_frame_tracker_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_lisp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_lisp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_lisp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_lisp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_lisp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_lisp _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_lisp _cob_frame_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_frame_tracker_genlisp)
add_dependencies(cob_frame_tracker_genlisp cob_frame_tracker_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_frame_tracker_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_nodejs(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_nodejs(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_nodejs(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_nodejs(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_nodejs(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_nodejs(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_frame_tracker
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cob_frame_tracker
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_frame_tracker
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cob_frame_tracker_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cob_frame_tracker_generate_messages cob_frame_tracker_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_nodejs _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_nodejs _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_nodejs _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_nodejs _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_nodejs _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_nodejs _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_nodejs _cob_frame_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_frame_tracker_gennodejs)
add_dependencies(cob_frame_tracker_gennodejs cob_frame_tracker_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_frame_tracker_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_py(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_py(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_py(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_py(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_py(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker
)
_generate_msg_py(cob_frame_tracker
  "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker
)

### Generating Services

### Generating Module File
_generate_module_py(cob_frame_tracker
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_frame_tracker_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_frame_tracker_generate_messages cob_frame_tracker_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingAction.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_py _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionGoal.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_py _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionResult.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_py _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingActionFeedback.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_py _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingGoal.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_py _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingResult.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_py _cob_frame_tracker_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/cob_frame_tracker/msg/FrameTrackingFeedback.msg" NAME_WE)
add_dependencies(cob_frame_tracker_generate_messages_py _cob_frame_tracker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_frame_tracker_genpy)
add_dependencies(cob_frame_tracker_genpy cob_frame_tracker_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_frame_tracker_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_frame_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_frame_tracker
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(cob_frame_tracker_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cob_frame_tracker_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cob_frame_tracker_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_frame_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_frame_tracker
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(cob_frame_tracker_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cob_frame_tracker_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cob_frame_tracker_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_frame_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_frame_tracker
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(cob_frame_tracker_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cob_frame_tracker_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cob_frame_tracker_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_frame_tracker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_frame_tracker
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(cob_frame_tracker_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cob_frame_tracker_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cob_frame_tracker_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_frame_tracker
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(cob_frame_tracker_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cob_frame_tracker_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cob_frame_tracker_generate_messages_py std_msgs_generate_messages_py)
endif()
