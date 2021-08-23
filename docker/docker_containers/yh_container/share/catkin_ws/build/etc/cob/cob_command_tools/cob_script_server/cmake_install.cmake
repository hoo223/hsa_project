# Install script for directory: /root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server

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
  include("/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/msg" TYPE FILE FILES "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/msg/ScriptState.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/srv" TYPE FILE FILES "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/srv/ComposeTrajectory.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/action" TYPE FILE FILES
    "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/action/Script.action"
    "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/action/State.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/msg" TYPE FILE FILES
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptAction.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionResult.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptActionFeedback.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptResult.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/ScriptFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/msg" TYPE FILE FILES
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateAction.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionResult.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateActionFeedback.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateGoal.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateResult.msg"
    "/root/share/catkin_ws/devel/share/cob_script_server/msg/StateFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/cmake" TYPE FILE FILES "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_script_server-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/include/cob_script_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/share/roseus/ros/cob_script_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/share/common-lisp/ros/cob_script_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/share/gennodejs/ros/cob_script_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/root/share/catkin_ws/devel/lib/python3/dist-packages/cob_script_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/lib/python3/dist-packages/cob_script_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_script_server.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/cmake" TYPE FILE FILES "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_script_server-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server/cmake" TYPE FILE FILES
    "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_script_serverConfig.cmake"
    "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_script_serverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server" TYPE FILE FILES "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_script_server" TYPE DIRECTORY FILES "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_script_server" TYPE PROGRAM FILES "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/cob_console")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_script_server" TYPE PROGRAM FILES "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/script_server.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_script_server" TYPE PROGRAM FILES "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/test_action_interface.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_script_server" TYPE PROGRAM FILES "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/test_move.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_script_server" TYPE PROGRAM FILES "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/test_python_api.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_script_server" TYPE PROGRAM FILES "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/test_say.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_script_server" TYPE PROGRAM FILES "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server/catkin_generated/installspace/test_trigger.py")
endif()

