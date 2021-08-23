# Install script for directory: /root/share/catkin_ws/src/etc/cob/cob_common/cob_actions

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/share/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_actions/action" TYPE FILE FILES
    "/root/share/catkin_ws/src/etc/cob/cob_common/cob_actions/action/SetBool.action"
    "/root/share/catkin_ws/src/etc/cob/cob_common/cob_actions/action/SetFloat.action"
    "/root/share/catkin_ws/src/etc/cob/cob_common/cob_actions/action/SetInt.action"
    "/root/share/catkin_ws/src/etc/cob/cob_common/cob_actions/action/SetString.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_actions/msg" TYPE FILE FILES
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetBoolAction.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetBoolActionGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetBoolActionResult.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetBoolActionFeedback.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetBoolGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetBoolResult.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetBoolFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_actions/msg" TYPE FILE FILES
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetFloatAction.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetFloatActionGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetFloatActionResult.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetFloatActionFeedback.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetFloatGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetFloatResult.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetFloatFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_actions/msg" TYPE FILE FILES
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetIntAction.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetIntActionGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetIntActionResult.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetIntActionFeedback.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetIntGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetIntResult.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetIntFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_actions/msg" TYPE FILE FILES
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetStringAction.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetStringActionGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetStringActionResult.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetStringActionFeedback.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetStringGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetStringResult.msg"
    "/root/share/catkin_ws/devel/share/cob_actions/msg/SetStringFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_actions/cmake" TYPE FILE FILES "/root/share/catkin_ws/build/etc/cob/cob_common/cob_actions/catkin_generated/installspace/cob_actions-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/include/cob_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/share/roseus/ros/cob_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/share/common-lisp/ros/cob_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/share/gennodejs/ros/cob_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/root/share/catkin_ws/devel/lib/python3/dist-packages/cob_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/lib/python3/dist-packages/cob_actions")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/share/catkin_ws/build/etc/cob/cob_common/cob_actions/catkin_generated/installspace/cob_actions.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_actions/cmake" TYPE FILE FILES "/root/share/catkin_ws/build/etc/cob/cob_common/cob_actions/catkin_generated/installspace/cob_actions-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_actions/cmake" TYPE FILE FILES
    "/root/share/catkin_ws/build/etc/cob/cob_common/cob_actions/catkin_generated/installspace/cob_actionsConfig.cmake"
    "/root/share/catkin_ws/build/etc/cob/cob_common/cob_actions/catkin_generated/installspace/cob_actionsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_actions" TYPE FILE FILES "/root/share/catkin_ws/src/etc/cob/cob_common/cob_actions/package.xml")
endif()

