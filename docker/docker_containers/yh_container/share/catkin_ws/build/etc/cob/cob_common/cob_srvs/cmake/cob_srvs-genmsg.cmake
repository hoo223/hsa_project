# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_srvs: 0 messages, 3 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv" NAME_WE)
add_custom_target(_cob_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_srvs" "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv" NAME_WE)
add_custom_target(_cob_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_srvs" "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv" NAME_WE)
add_custom_target(_cob_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_srvs" "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)
_generate_srv_cpp(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
)

### Generating Module File
_generate_module_cpp(cob_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_srvs_generate_messages cob_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_cpp _cob_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_cpp _cob_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_cpp _cob_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_srvs_gencpp)
add_dependencies(cob_srvs_gencpp cob_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_srvs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_srvs
)
_generate_srv_eus(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_srvs
)
_generate_srv_eus(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_srvs
)

### Generating Module File
_generate_module_eus(cob_srvs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_srvs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cob_srvs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cob_srvs_generate_messages cob_srvs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_eus _cob_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_eus _cob_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_eus _cob_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_srvs_geneus)
add_dependencies(cob_srvs_geneus cob_srvs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_srvs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)
_generate_srv_lisp(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
)

### Generating Module File
_generate_module_lisp(cob_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_srvs_generate_messages cob_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_lisp _cob_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_lisp _cob_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_lisp _cob_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_srvs_genlisp)
add_dependencies(cob_srvs_genlisp cob_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_srvs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_srvs
)
_generate_srv_nodejs(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_srvs
)
_generate_srv_nodejs(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_srvs
)

### Generating Module File
_generate_module_nodejs(cob_srvs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_srvs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cob_srvs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cob_srvs_generate_messages cob_srvs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_nodejs _cob_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_nodejs _cob_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_nodejs _cob_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_srvs_gennodejs)
add_dependencies(cob_srvs_gennodejs cob_srvs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_srvs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)
_generate_srv_py(cob_srvs
  "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
)

### Generating Module File
_generate_module_py(cob_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_srvs_generate_messages cob_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetFloat.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_py _cob_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetInt.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_py _cob_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/etc/cob/cob_common/cob_srvs/srv/SetString.srv" NAME_WE)
add_dependencies(cob_srvs_generate_messages_py _cob_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_srvs_genpy)
add_dependencies(cob_srvs_genpy cob_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_srvs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_srvs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
