// Auto-generated. Do not edit!

// (in-package acg_control_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let workspace_trajectory_msgs = _finder('workspace_trajectory_msgs');

//-----------------------------------------------------------

class FollowWorkspaceTrajectoryGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.workspace_trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('workspace_trajectory')) {
        this.workspace_trajectory = initObj.workspace_trajectory
      }
      else {
        this.workspace_trajectory = new workspace_trajectory_msgs.msg.WorkspaceTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowWorkspaceTrajectoryGoal
    // Serialize message field [workspace_trajectory]
    bufferOffset = workspace_trajectory_msgs.msg.WorkspaceTrajectory.serialize(obj.workspace_trajectory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowWorkspaceTrajectoryGoal
    let len;
    let data = new FollowWorkspaceTrajectoryGoal(null);
    // Deserialize message field [workspace_trajectory]
    data.workspace_trajectory = workspace_trajectory_msgs.msg.WorkspaceTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += workspace_trajectory_msgs.msg.WorkspaceTrajectory.getMessageSize(object.workspace_trajectory);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acg_control_msg/FollowWorkspaceTrajectoryGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53f9d0acedeba6e6691b2971b0a93f25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    workspace_trajectory_msgs/WorkspaceTrajectory workspace_trajectory
    
    ================================================================================
    MSG: workspace_trajectory_msgs/WorkspaceTrajectory
    string name
    geometry_msgs/Pose[] waypoints
    geometry_msgs/Wrench[] wrenches
    float64[] timestamps
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FollowWorkspaceTrajectoryGoal(null);
    if (msg.workspace_trajectory !== undefined) {
      resolved.workspace_trajectory = workspace_trajectory_msgs.msg.WorkspaceTrajectory.Resolve(msg.workspace_trajectory)
    }
    else {
      resolved.workspace_trajectory = new workspace_trajectory_msgs.msg.WorkspaceTrajectory()
    }

    return resolved;
    }
};

module.exports = FollowWorkspaceTrajectoryGoal;
