# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_base_controller_utils: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icob_base_controller_utils:/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_base_controller_utils_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg" NAME_WE)
add_custom_target(_cob_base_controller_utils_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_base_controller_utils" "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cob_base_controller_utils
  "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_base_controller_utils
)

### Generating Services

### Generating Module File
_generate_module_cpp(cob_base_controller_utils
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_base_controller_utils
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_base_controller_utils_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_base_controller_utils_generate_messages cob_base_controller_utils_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg" NAME_WE)
add_dependencies(cob_base_controller_utils_generate_messages_cpp _cob_base_controller_utils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_base_controller_utils_gencpp)
add_dependencies(cob_base_controller_utils_gencpp cob_base_controller_utils_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_base_controller_utils_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cob_base_controller_utils
  "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_base_controller_utils
)

### Generating Services

### Generating Module File
_generate_module_eus(cob_base_controller_utils
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_base_controller_utils
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cob_base_controller_utils_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cob_base_controller_utils_generate_messages cob_base_controller_utils_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg" NAME_WE)
add_dependencies(cob_base_controller_utils_generate_messages_eus _cob_base_controller_utils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_base_controller_utils_geneus)
add_dependencies(cob_base_controller_utils_geneus cob_base_controller_utils_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_base_controller_utils_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cob_base_controller_utils
  "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_base_controller_utils
)

### Generating Services

### Generating Module File
_generate_module_lisp(cob_base_controller_utils
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_base_controller_utils
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_base_controller_utils_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_base_controller_utils_generate_messages cob_base_controller_utils_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg" NAME_WE)
add_dependencies(cob_base_controller_utils_generate_messages_lisp _cob_base_controller_utils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_base_controller_utils_genlisp)
add_dependencies(cob_base_controller_utils_genlisp cob_base_controller_utils_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_base_controller_utils_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cob_base_controller_utils
  "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_base_controller_utils
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cob_base_controller_utils
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_base_controller_utils
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cob_base_controller_utils_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cob_base_controller_utils_generate_messages cob_base_controller_utils_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg" NAME_WE)
add_dependencies(cob_base_controller_utils_generate_messages_nodejs _cob_base_controller_utils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_base_controller_utils_gennodejs)
add_dependencies(cob_base_controller_utils_gennodejs cob_base_controller_utils_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_base_controller_utils_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cob_base_controller_utils
  "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_base_controller_utils
)

### Generating Services

### Generating Module File
_generate_module_py(cob_base_controller_utils
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_base_controller_utils
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_base_controller_utils_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_base_controller_utils_generate_messages cob_base_controller_utils_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_base_controller_utils/msg/WheelCommands.msg" NAME_WE)
add_dependencies(cob_base_controller_utils_generate_messages_py _cob_base_controller_utils_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_base_controller_utils_genpy)
add_dependencies(cob_base_controller_utils_genpy cob_base_controller_utils_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_base_controller_utils_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_base_controller_utils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_base_controller_utils
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cob_base_controller_utils_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_base_controller_utils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_base_controller_utils
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cob_base_controller_utils_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_base_controller_utils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_base_controller_utils
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cob_base_controller_utils_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_base_controller_utils)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_base_controller_utils
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cob_base_controller_utils_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_base_controller_utils)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_base_controller_utils\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_base_controller_utils
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cob_base_controller_utils_generate_messages_py std_msgs_generate_messages_py)
endif()
