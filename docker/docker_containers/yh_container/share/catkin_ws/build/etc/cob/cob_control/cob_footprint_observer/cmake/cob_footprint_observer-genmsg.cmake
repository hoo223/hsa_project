# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_footprint_observer: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_footprint_observer_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv" NAME_WE)
add_custom_target(_cob_footprint_observer_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_footprint_observer" "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv" "std_msgs/Header:geometry_msgs/Point32:std_msgs/Bool:geometry_msgs/Polygon:geometry_msgs/PolygonStamped"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cob_footprint_observer
  "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_footprint_observer
)

### Generating Module File
_generate_module_cpp(cob_footprint_observer
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_footprint_observer
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_footprint_observer_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_footprint_observer_generate_messages cob_footprint_observer_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv" NAME_WE)
add_dependencies(cob_footprint_observer_generate_messages_cpp _cob_footprint_observer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_footprint_observer_gencpp)
add_dependencies(cob_footprint_observer_gencpp cob_footprint_observer_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_footprint_observer_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cob_footprint_observer
  "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_footprint_observer
)

### Generating Module File
_generate_module_eus(cob_footprint_observer
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_footprint_observer
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cob_footprint_observer_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cob_footprint_observer_generate_messages cob_footprint_observer_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv" NAME_WE)
add_dependencies(cob_footprint_observer_generate_messages_eus _cob_footprint_observer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_footprint_observer_geneus)
add_dependencies(cob_footprint_observer_geneus cob_footprint_observer_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_footprint_observer_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cob_footprint_observer
  "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_footprint_observer
)

### Generating Module File
_generate_module_lisp(cob_footprint_observer
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_footprint_observer
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_footprint_observer_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_footprint_observer_generate_messages cob_footprint_observer_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv" NAME_WE)
add_dependencies(cob_footprint_observer_generate_messages_lisp _cob_footprint_observer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_footprint_observer_genlisp)
add_dependencies(cob_footprint_observer_genlisp cob_footprint_observer_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_footprint_observer_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cob_footprint_observer
  "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_footprint_observer
)

### Generating Module File
_generate_module_nodejs(cob_footprint_observer
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_footprint_observer
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cob_footprint_observer_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cob_footprint_observer_generate_messages cob_footprint_observer_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv" NAME_WE)
add_dependencies(cob_footprint_observer_generate_messages_nodejs _cob_footprint_observer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_footprint_observer_gennodejs)
add_dependencies(cob_footprint_observer_gennodejs cob_footprint_observer_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_footprint_observer_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cob_footprint_observer
  "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_footprint_observer
)

### Generating Module File
_generate_module_py(cob_footprint_observer
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_footprint_observer
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_footprint_observer_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_footprint_observer_generate_messages cob_footprint_observer_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_control/cob_footprint_observer/srv/GetFootprint.srv" NAME_WE)
add_dependencies(cob_footprint_observer_generate_messages_py _cob_footprint_observer_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_footprint_observer_genpy)
add_dependencies(cob_footprint_observer_genpy cob_footprint_observer_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_footprint_observer_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_footprint_observer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_footprint_observer
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cob_footprint_observer_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cob_footprint_observer_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_footprint_observer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_footprint_observer
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cob_footprint_observer_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cob_footprint_observer_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_footprint_observer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_footprint_observer
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cob_footprint_observer_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cob_footprint_observer_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_footprint_observer)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_footprint_observer
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cob_footprint_observer_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cob_footprint_observer_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_footprint_observer)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_footprint_observer\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_footprint_observer
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cob_footprint_observer_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cob_footprint_observer_generate_messages_py std_msgs_generate_messages_py)
endif()
