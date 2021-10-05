# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ur10_python_interface: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iur10_python_interface:/root/share/catkin_ws/src/ur10_python_interface/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ur10_python_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg" NAME_WE)
add_custom_target(_ur10_python_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ur10_python_interface" "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg" "std_msgs/Float64MultiArray:std_msgs/MultiArrayLayout:std_msgs/MultiArrayDimension"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ur10_python_interface
  "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10_python_interface
)

### Generating Services

### Generating Module File
_generate_module_cpp(ur10_python_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10_python_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ur10_python_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ur10_python_interface_generate_messages ur10_python_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg" NAME_WE)
add_dependencies(ur10_python_interface_generate_messages_cpp _ur10_python_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur10_python_interface_gencpp)
add_dependencies(ur10_python_interface_gencpp ur10_python_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur10_python_interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ur10_python_interface
  "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10_python_interface
)

### Generating Services

### Generating Module File
_generate_module_eus(ur10_python_interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10_python_interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ur10_python_interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ur10_python_interface_generate_messages ur10_python_interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg" NAME_WE)
add_dependencies(ur10_python_interface_generate_messages_eus _ur10_python_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur10_python_interface_geneus)
add_dependencies(ur10_python_interface_geneus ur10_python_interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur10_python_interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ur10_python_interface
  "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10_python_interface
)

### Generating Services

### Generating Module File
_generate_module_lisp(ur10_python_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10_python_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ur10_python_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ur10_python_interface_generate_messages ur10_python_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg" NAME_WE)
add_dependencies(ur10_python_interface_generate_messages_lisp _ur10_python_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur10_python_interface_genlisp)
add_dependencies(ur10_python_interface_genlisp ur10_python_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur10_python_interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ur10_python_interface
  "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10_python_interface
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ur10_python_interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10_python_interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ur10_python_interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ur10_python_interface_generate_messages ur10_python_interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg" NAME_WE)
add_dependencies(ur10_python_interface_generate_messages_nodejs _ur10_python_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur10_python_interface_gennodejs)
add_dependencies(ur10_python_interface_gennodejs ur10_python_interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur10_python_interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ur10_python_interface
  "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10_python_interface
)

### Generating Services

### Generating Module File
_generate_module_py(ur10_python_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10_python_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ur10_python_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ur10_python_interface_generate_messages ur10_python_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/ur10_python_interface/msg/Ellipsoid3.msg" NAME_WE)
add_dependencies(ur10_python_interface_generate_messages_py _ur10_python_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ur10_python_interface_genpy)
add_dependencies(ur10_python_interface_genpy ur10_python_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur10_python_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10_python_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur10_python_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ur10_python_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ur10_python_interface_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10_python_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ur10_python_interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ur10_python_interface_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ur10_python_interface_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10_python_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur10_python_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ur10_python_interface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ur10_python_interface_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10_python_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ur10_python_interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ur10_python_interface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ur10_python_interface_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10_python_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10_python_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur10_python_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ur10_python_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ur10_python_interface_generate_messages_py geometry_msgs_generate_messages_py)
endif()
