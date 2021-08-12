# Install script for directory: /root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/srv" TYPE FILE FILES
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/action" TYPE FILE FILES
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/action/JoystickJoints.action"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/action/RobotMove.action"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/action/Tool.action"
    "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/action/Sequence.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/msg" TYPE FILE FILES
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg"
    "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES "/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/include/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/share/roseus/ros/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/share/common-lisp/ros/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/share/gennodejs/ros/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/root/share/catkin_ws/devel/lib/python3/dist-packages/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/root/share/catkin_ws/devel/lib/python3/dist-packages/niryo_one_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES "/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs/cmake" TYPE FILE FILES
    "/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgsConfig.cmake"
    "/root/share/catkin_ws/build/niryo/niryo_one_ros/niryo_one_msgs/catkin_generated/installspace/niryo_one_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/niryo_one_msgs" TYPE FILE FILES "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/package.xml")
endif()

