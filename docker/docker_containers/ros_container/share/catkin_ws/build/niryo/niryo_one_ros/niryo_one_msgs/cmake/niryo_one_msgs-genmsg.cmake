# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "niryo_one_msgs: 46 messages, 38 services")

set(MSG_I_FLAGS "-Iniryo_one_msgs:/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg;-Iniryo_one_msgs:/root/share/catkin_ws/devel/share/niryo_one_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/noetic/share/moveit_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/noetic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/noetic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(niryo_one_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg" "geometry_msgs/Point:niryo_one_msgs/RPY"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg" "geometry_msgs/Vector3:shape_msgs/SolidPrimitive:geometry_msgs/Transform:moveit_msgs/AttachedCollisionObject:shape_msgs/Mesh:niryo_one_msgs/RPY:trajectory_msgs/MultiDOFJointTrajectory:trajectory_msgs/JointTrajectory:geometry_msgs/Point:sensor_msgs/JointState:trajectory_msgs/MultiDOFJointTrajectoryPoint:sensor_msgs/MultiDOFJointState:geometry_msgs/Twist:trajectory_msgs/JointTrajectoryPoint:moveit_msgs/CollisionObject:niryo_one_msgs/ShiftPose:shape_msgs/Plane:geometry_msgs/Pose:geometry_msgs/Wrench:std_msgs/Header:moveit_msgs/RobotTrajectory:shape_msgs/MeshTriangle:moveit_msgs/RobotState:object_recognition_msgs/ObjectType:niryo_one_msgs/ToolCommand:geometry_msgs/Quaternion:niryo_one_msgs/TrajectoryPlan"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg" "geometry_msgs/Vector3:shape_msgs/SolidPrimitive:geometry_msgs/Transform:moveit_msgs/AttachedCollisionObject:shape_msgs/Mesh:trajectory_msgs/MultiDOFJointTrajectory:trajectory_msgs/JointTrajectory:geometry_msgs/Point:sensor_msgs/JointState:trajectory_msgs/MultiDOFJointTrajectoryPoint:sensor_msgs/MultiDOFJointState:geometry_msgs/Twist:trajectory_msgs/JointTrajectoryPoint:moveit_msgs/CollisionObject:shape_msgs/Plane:geometry_msgs/Pose:geometry_msgs/Wrench:std_msgs/Header:moveit_msgs/RobotTrajectory:shape_msgs/MeshTriangle:moveit_msgs/RobotState:object_recognition_msgs/ObjectType:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg" "geometry_msgs/Point:niryo_one_msgs/RPY:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg" "geometry_msgs/Vector3:shape_msgs/SolidPrimitive:geometry_msgs/Transform:moveit_msgs/AttachedCollisionObject:shape_msgs/Mesh:trajectory_msgs/MultiDOFJointTrajectory:trajectory_msgs/JointTrajectory:geometry_msgs/Point:sensor_msgs/JointState:trajectory_msgs/MultiDOFJointTrajectoryPoint:sensor_msgs/MultiDOFJointState:geometry_msgs/Twist:trajectory_msgs/JointTrajectoryPoint:moveit_msgs/CollisionObject:shape_msgs/Plane:geometry_msgs/Pose:geometry_msgs/Wrench:std_msgs/Header:moveit_msgs/RobotTrajectory:shape_msgs/MeshTriangle:moveit_msgs/RobotState:object_recognition_msgs/ObjectType:geometry_msgs/Quaternion:niryo_one_msgs/TrajectoryPlan"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg" "niryo_one_msgs/JoystickJointsActionGoal:niryo_one_msgs/JoystickJointsResult:niryo_one_msgs/JoystickJointsFeedback:actionlib_msgs/GoalID:niryo_one_msgs/JoystickJointsActionResult:actionlib_msgs/GoalStatus:niryo_one_msgs/JoystickJointsGoal:std_msgs/Header:niryo_one_msgs/JoystickJointsActionFeedback"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg" "actionlib_msgs/GoalID:niryo_one_msgs/JoystickJointsGoal:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg" "actionlib_msgs/GoalID:niryo_one_msgs/JoystickJointsResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg" "niryo_one_msgs/JoystickJointsFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg" "geometry_msgs/Vector3:actionlib_msgs/GoalID:shape_msgs/SolidPrimitive:geometry_msgs/Transform:moveit_msgs/AttachedCollisionObject:shape_msgs/Mesh:niryo_one_msgs/RPY:trajectory_msgs/MultiDOFJointTrajectory:trajectory_msgs/JointTrajectory:niryo_one_msgs/RobotMoveActionGoal:geometry_msgs/Point:sensor_msgs/JointState:niryo_one_msgs/RobotMoveCommand:trajectory_msgs/MultiDOFJointTrajectoryPoint:sensor_msgs/MultiDOFJointState:geometry_msgs/Twist:trajectory_msgs/JointTrajectoryPoint:niryo_one_msgs/RobotMoveResult:niryo_one_msgs/RobotMoveGoal:moveit_msgs/CollisionObject:niryo_one_msgs/RobotState:niryo_one_msgs/RobotMoveActionResult:niryo_one_msgs/ShiftPose:shape_msgs/Plane:geometry_msgs/Pose:geometry_msgs/Wrench:actionlib_msgs/GoalStatus:std_msgs/Header:niryo_one_msgs/RobotMoveActionFeedback:moveit_msgs/RobotTrajectory:shape_msgs/MeshTriangle:moveit_msgs/RobotState:object_recognition_msgs/ObjectType:niryo_one_msgs/ToolCommand:niryo_one_msgs/RobotMoveFeedback:geometry_msgs/Quaternion:niryo_one_msgs/TrajectoryPlan"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg" "geometry_msgs/Vector3:actionlib_msgs/GoalID:shape_msgs/SolidPrimitive:geometry_msgs/Transform:moveit_msgs/AttachedCollisionObject:shape_msgs/Mesh:niryo_one_msgs/RPY:trajectory_msgs/MultiDOFJointTrajectory:trajectory_msgs/JointTrajectory:geometry_msgs/Point:sensor_msgs/JointState:niryo_one_msgs/RobotMoveCommand:trajectory_msgs/MultiDOFJointTrajectoryPoint:sensor_msgs/MultiDOFJointState:geometry_msgs/Twist:trajectory_msgs/JointTrajectoryPoint:niryo_one_msgs/RobotMoveGoal:moveit_msgs/CollisionObject:niryo_one_msgs/ShiftPose:shape_msgs/Plane:geometry_msgs/Pose:geometry_msgs/Wrench:std_msgs/Header:moveit_msgs/RobotTrajectory:shape_msgs/MeshTriangle:moveit_msgs/RobotState:object_recognition_msgs/ObjectType:niryo_one_msgs/ToolCommand:geometry_msgs/Quaternion:niryo_one_msgs/TrajectoryPlan"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg" "actionlib_msgs/GoalID:niryo_one_msgs/RobotMoveResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg" "actionlib_msgs/GoalID:niryo_one_msgs/RPY:niryo_one_msgs/RobotState:niryo_one_msgs/RobotMoveFeedback:geometry_msgs/Point:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg" "geometry_msgs/Vector3:shape_msgs/SolidPrimitive:geometry_msgs/Transform:moveit_msgs/AttachedCollisionObject:shape_msgs/Mesh:niryo_one_msgs/RPY:trajectory_msgs/MultiDOFJointTrajectory:trajectory_msgs/JointTrajectory:geometry_msgs/Point:sensor_msgs/JointState:niryo_one_msgs/RobotMoveCommand:trajectory_msgs/MultiDOFJointTrajectoryPoint:sensor_msgs/MultiDOFJointState:geometry_msgs/Twist:trajectory_msgs/JointTrajectoryPoint:moveit_msgs/CollisionObject:niryo_one_msgs/ShiftPose:shape_msgs/Plane:geometry_msgs/Pose:geometry_msgs/Wrench:std_msgs/Header:moveit_msgs/RobotTrajectory:shape_msgs/MeshTriangle:moveit_msgs/RobotState:object_recognition_msgs/ObjectType:niryo_one_msgs/ToolCommand:geometry_msgs/Quaternion:niryo_one_msgs/TrajectoryPlan"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg" "geometry_msgs/Point:niryo_one_msgs/RPY:niryo_one_msgs/RobotState"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg" "niryo_one_msgs/ToolFeedback:actionlib_msgs/GoalID:niryo_one_msgs/ToolResult:niryo_one_msgs/ToolActionGoal:niryo_one_msgs/ToolCommand:niryo_one_msgs/ToolActionResult:niryo_one_msgs/ToolActionFeedback:niryo_one_msgs/ToolGoal:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg" "actionlib_msgs/GoalID:niryo_one_msgs/ToolCommand:niryo_one_msgs/ToolGoal:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg" "actionlib_msgs/GoalID:niryo_one_msgs/ToolResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg" "niryo_one_msgs/ToolFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg" "niryo_one_msgs/ToolCommand"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg" "niryo_one_msgs/SequenceResult:niryo_one_msgs/SequenceActionResult:niryo_one_msgs/SequenceActionGoal:actionlib_msgs/GoalID:niryo_one_msgs/SequenceActionFeedback:niryo_one_msgs/Sequence:niryo_one_msgs/SequenceFeedback:niryo_one_msgs/SequenceGoal:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg" "niryo_one_msgs/Sequence:actionlib_msgs/GoalID:niryo_one_msgs/SequenceGoal:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg" "niryo_one_msgs/SequenceResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header:niryo_one_msgs/SequenceFeedback"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg" "niryo_one_msgs/Sequence"
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv" "geometry_msgs/Vector3:shape_msgs/SolidPrimitive:geometry_msgs/Transform:moveit_msgs/AttachedCollisionObject:shape_msgs/Mesh:niryo_one_msgs/RPY:trajectory_msgs/MultiDOFJointTrajectory:trajectory_msgs/JointTrajectory:geometry_msgs/Point:sensor_msgs/JointState:niryo_one_msgs/RobotMoveCommand:trajectory_msgs/MultiDOFJointTrajectoryPoint:sensor_msgs/MultiDOFJointState:geometry_msgs/Twist:trajectory_msgs/JointTrajectoryPoint:moveit_msgs/CollisionObject:niryo_one_msgs/ShiftPose:shape_msgs/Plane:geometry_msgs/Pose:geometry_msgs/Wrench:std_msgs/Header:moveit_msgs/RobotTrajectory:shape_msgs/MeshTriangle:moveit_msgs/RobotState:object_recognition_msgs/ObjectType:niryo_one_msgs/ToolCommand:geometry_msgs/Quaternion:niryo_one_msgs/TrajectoryPlan"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv" "niryo_one_msgs/Sequence"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv" "niryo_one_msgs/Sequence"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv" "niryo_one_msgs/Position:niryo_one_msgs/RPY:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv" "niryo_one_msgs/Position:niryo_one_msgs/RPY:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv" "geometry_msgs/Vector3:shape_msgs/SolidPrimitive:geometry_msgs/Transform:moveit_msgs/AttachedCollisionObject:shape_msgs/Mesh:trajectory_msgs/MultiDOFJointTrajectory:trajectory_msgs/JointTrajectory:geometry_msgs/Point:sensor_msgs/JointState:trajectory_msgs/MultiDOFJointTrajectoryPoint:sensor_msgs/MultiDOFJointState:geometry_msgs/Twist:trajectory_msgs/JointTrajectoryPoint:moveit_msgs/CollisionObject:shape_msgs/Plane:geometry_msgs/Pose:geometry_msgs/Wrench:std_msgs/Header:niryo_one_msgs/Trajectory:moveit_msgs/RobotTrajectory:shape_msgs/MeshTriangle:moveit_msgs/RobotState:object_recognition_msgs/ObjectType:geometry_msgs/Quaternion:niryo_one_msgs/TrajectoryPlan"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv" "geometry_msgs/Vector3:shape_msgs/SolidPrimitive:geometry_msgs/Transform:moveit_msgs/AttachedCollisionObject:shape_msgs/Mesh:trajectory_msgs/MultiDOFJointTrajectory:trajectory_msgs/JointTrajectory:geometry_msgs/Point:sensor_msgs/JointState:trajectory_msgs/MultiDOFJointTrajectoryPoint:sensor_msgs/MultiDOFJointState:geometry_msgs/Twist:trajectory_msgs/JointTrajectoryPoint:moveit_msgs/CollisionObject:shape_msgs/Plane:geometry_msgs/Pose:geometry_msgs/Wrench:std_msgs/Header:niryo_one_msgs/Trajectory:moveit_msgs/RobotTrajectory:shape_msgs/MeshTriangle:moveit_msgs/RobotState:object_recognition_msgs/ObjectType:geometry_msgs/Quaternion:niryo_one_msgs/TrajectoryPlan"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv" "std_msgs/Empty:sensor_msgs/RegionOfInterest:sensor_msgs/CameraInfo:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv" "sensor_msgs/CompressedImage:niryo_one_msgs/ObjectPose:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv" "geometry_msgs/Point:niryo_one_msgs/RPY:niryo_one_msgs/RobotState"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv" "geometry_msgs/Point:niryo_one_msgs/RPY:niryo_one_msgs/RobotState"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv" "geometry_msgs/Point:niryo_one_msgs/RPY:niryo_one_msgs/RobotState"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv" ""
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv" "geometry_msgs/Point:niryo_one_msgs/RPY:niryo_one_msgs/RobotState"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv" "sensor_msgs/CompressedImage:std_msgs/Header"
)

get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv" NAME_WE)
add_custom_target(_niryo_one_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "niryo_one_msgs" "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv" "sensor_msgs/CompressedImage:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_cpp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)

### Generating Services
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_cpp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
)

### Generating Module File
_generate_module_cpp(niryo_one_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(niryo_one_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(niryo_one_msgs_generate_messages niryo_one_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_cpp _niryo_one_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_one_msgs_gencpp)
add_dependencies(niryo_one_msgs_gencpp niryo_one_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_one_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_eus(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)

### Generating Services
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_eus(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
)

### Generating Module File
_generate_module_eus(niryo_one_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(niryo_one_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(niryo_one_msgs_generate_messages niryo_one_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_eus _niryo_one_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_one_msgs_geneus)
add_dependencies(niryo_one_msgs_geneus niryo_one_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_one_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_lisp(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)

### Generating Services
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_lisp(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
)

### Generating Module File
_generate_module_lisp(niryo_one_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(niryo_one_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(niryo_one_msgs_generate_messages niryo_one_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_lisp _niryo_one_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_one_msgs_genlisp)
add_dependencies(niryo_one_msgs_genlisp niryo_one_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_one_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)

### Generating Services
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_nodejs(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
)

### Generating Module File
_generate_module_nodejs(niryo_one_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(niryo_one_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(niryo_one_msgs_generate_messages niryo_one_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_nodejs _niryo_one_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_one_msgs_gennodejs)
add_dependencies(niryo_one_msgs_gennodejs niryo_one_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_one_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_msg_py(niryo_one_msgs
  "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)

### Generating Services
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv"
  "${MSG_I_FLAGS}"
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/noetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/noetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/noetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Empty.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg;/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)
_generate_srv_py(niryo_one_msgs
  "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
)

### Generating Module File
_generate_module_py(niryo_one_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(niryo_one_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(niryo_one_msgs_generate_messages niryo_one_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RPY.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ShiftPose.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/RobotMoveCommand.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ToolCommand.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ProcessState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/HardwareStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/LogStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/DigitalIOState.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SoftwareVersion.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Sequence.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/SequenceAutorunStatus.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/TrajectoryPlan.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/MatlabMoveResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Position.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/Trajectory.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ObjectPose.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/msg/ConveyorFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/JoystickJointsFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/RobotMoveFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/ToolFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceAction.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceActionFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceGoal.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceResult.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/devel/share/niryo_one_msgs/msg/SequenceFeedback.msg" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetInt.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/RobotMove.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageProcess.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetLeds.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetInt.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PingDxlTool.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/OpenGripper.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/CloseGripper.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PullAirVacuumPump.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/PushAirVacuumPump.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetDigitalIO.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetSequenceList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageSequence.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetSequenceAutorun.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManagePosition.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetPositionList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ManageTrajectory.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTrajectoryList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeHardwareVersion.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SendCustomDxlValue.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ChangeMotorConfig.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetCalibrationCam.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetCalibrationCam.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ObjDetection.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditGrip.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/EditWorkspace.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRatio.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceList.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/TakePicture.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/SetConveyor.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/ControlConveyor.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/UpdateConveyorId.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/GetWorkspaceRobotPoses.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugMarkers.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/share/catkin_ws/src/niryo/niryo_one_ros/niryo_one_msgs/srv/DebugColorDetection.srv" NAME_WE)
add_dependencies(niryo_one_msgs_generate_messages_py _niryo_one_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(niryo_one_msgs_genpy)
add_dependencies(niryo_one_msgs_genpy niryo_one_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS niryo_one_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/niryo_one_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(niryo_one_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(niryo_one_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(niryo_one_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(niryo_one_msgs_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(niryo_one_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/niryo_one_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(niryo_one_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(niryo_one_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(niryo_one_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(niryo_one_msgs_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(niryo_one_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/niryo_one_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(niryo_one_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(niryo_one_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(niryo_one_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(niryo_one_msgs_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(niryo_one_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/niryo_one_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(niryo_one_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(niryo_one_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(niryo_one_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(niryo_one_msgs_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(niryo_one_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/niryo_one_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(niryo_one_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(niryo_one_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(niryo_one_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(niryo_one_msgs_generate_messages_py moveit_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(niryo_one_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
