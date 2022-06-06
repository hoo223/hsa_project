# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "workspace_trajectory_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iworkspace_trajectory_msgs:/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(workspace_trajectory_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_custom_target(_workspace_trajectory_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "workspace_trajectory_msgs" "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg" "geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Wrench:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(workspace_trajectory_msgs
  "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/workspace_trajectory_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(workspace_trajectory_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/workspace_trajectory_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(workspace_trajectory_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(workspace_trajectory_msgs_generate_messages workspace_trajectory_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_dependencies(workspace_trajectory_msgs_generate_messages_cpp _workspace_trajectory_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(workspace_trajectory_msgs_gencpp)
add_dependencies(workspace_trajectory_msgs_gencpp workspace_trajectory_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS workspace_trajectory_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(workspace_trajectory_msgs
  "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/workspace_trajectory_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(workspace_trajectory_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/workspace_trajectory_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(workspace_trajectory_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(workspace_trajectory_msgs_generate_messages workspace_trajectory_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_dependencies(workspace_trajectory_msgs_generate_messages_eus _workspace_trajectory_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(workspace_trajectory_msgs_geneus)
add_dependencies(workspace_trajectory_msgs_geneus workspace_trajectory_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS workspace_trajectory_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(workspace_trajectory_msgs
  "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/workspace_trajectory_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(workspace_trajectory_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/workspace_trajectory_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(workspace_trajectory_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(workspace_trajectory_msgs_generate_messages workspace_trajectory_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_dependencies(workspace_trajectory_msgs_generate_messages_lisp _workspace_trajectory_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(workspace_trajectory_msgs_genlisp)
add_dependencies(workspace_trajectory_msgs_genlisp workspace_trajectory_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS workspace_trajectory_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(workspace_trajectory_msgs
  "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/workspace_trajectory_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(workspace_trajectory_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/workspace_trajectory_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(workspace_trajectory_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(workspace_trajectory_msgs_generate_messages workspace_trajectory_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_dependencies(workspace_trajectory_msgs_generate_messages_nodejs _workspace_trajectory_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(workspace_trajectory_msgs_gennodejs)
add_dependencies(workspace_trajectory_msgs_gennodejs workspace_trajectory_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS workspace_trajectory_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(workspace_trajectory_msgs
  "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workspace_trajectory_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(workspace_trajectory_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workspace_trajectory_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(workspace_trajectory_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(workspace_trajectory_msgs_generate_messages workspace_trajectory_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/interaction_controllers/workspace_trajectory_msgs/msg/WorkspaceTrajectory.msg" NAME_WE)
add_dependencies(workspace_trajectory_msgs_generate_messages_py _workspace_trajectory_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(workspace_trajectory_msgs_genpy)
add_dependencies(workspace_trajectory_msgs_genpy workspace_trajectory_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS workspace_trajectory_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/workspace_trajectory_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/workspace_trajectory_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(workspace_trajectory_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/workspace_trajectory_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/workspace_trajectory_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(workspace_trajectory_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/workspace_trajectory_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/workspace_trajectory_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(workspace_trajectory_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/workspace_trajectory_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/workspace_trajectory_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(workspace_trajectory_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workspace_trajectory_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workspace_trajectory_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/workspace_trajectory_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(workspace_trajectory_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
