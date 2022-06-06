// Auto-generated. Do not edit!

// (in-package acg_control_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class FollowWorkspaceTrajectoryFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.desired_pose = null;
      this.desired_wrench = null;
      this.actual_pose = null;
      this.actual_wrench = null;
      this.error_pose = null;
      this.error_wrench = null;
      this.time_from_start = null;
    }
    else {
      if (initObj.hasOwnProperty('desired_pose')) {
        this.desired_pose = initObj.desired_pose
      }
      else {
        this.desired_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('desired_wrench')) {
        this.desired_wrench = initObj.desired_wrench
      }
      else {
        this.desired_wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('actual_pose')) {
        this.actual_pose = initObj.actual_pose
      }
      else {
        this.actual_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('actual_wrench')) {
        this.actual_wrench = initObj.actual_wrench
      }
      else {
        this.actual_wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('error_pose')) {
        this.error_pose = initObj.error_pose
      }
      else {
        this.error_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('error_wrench')) {
        this.error_wrench = initObj.error_wrench
      }
      else {
        this.error_wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('time_from_start')) {
        this.time_from_start = initObj.time_from_start
      }
      else {
        this.time_from_start = new std_msgs.msg.Duration();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowWorkspaceTrajectoryFeedback
    // Serialize message field [desired_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.desired_pose, buffer, bufferOffset);
    // Serialize message field [desired_wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.desired_wrench, buffer, bufferOffset);
    // Serialize message field [actual_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.actual_pose, buffer, bufferOffset);
    // Serialize message field [actual_wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.actual_wrench, buffer, bufferOffset);
    // Serialize message field [error_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.error_pose, buffer, bufferOffset);
    // Serialize message field [error_wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.error_wrench, buffer, bufferOffset);
    // Serialize message field [time_from_start]
    bufferOffset = std_msgs.msg.Duration.serialize(obj.time_from_start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowWorkspaceTrajectoryFeedback
    let len;
    let data = new FollowWorkspaceTrajectoryFeedback(null);
    // Deserialize message field [desired_pose]
    data.desired_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [desired_wrench]
    data.desired_wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [actual_pose]
    data.actual_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [actual_wrench]
    data.actual_wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_pose]
    data.error_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_wrench]
    data.error_wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_from_start]
    data.time_from_start = std_msgs.msg.Duration.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 320;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acg_control_msg/FollowWorkspaceTrajectoryFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ced1f6e4a7e2d4e812288f7a9f1b6e62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    geometry_msgs/Pose desired_pose
    geometry_msgs/Wrench desired_wrench
    geometry_msgs/Pose actual_pose
    geometry_msgs/Wrench actual_wrench
    geometry_msgs/Pose error_pose
    geometry_msgs/Wrench error_wrench
    std_msgs/Duration time_from_start
    
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
    ================================================================================
    MSG: std_msgs/Duration
    duration data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FollowWorkspaceTrajectoryFeedback(null);
    if (msg.desired_pose !== undefined) {
      resolved.desired_pose = geometry_msgs.msg.Pose.Resolve(msg.desired_pose)
    }
    else {
      resolved.desired_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.desired_wrench !== undefined) {
      resolved.desired_wrench = geometry_msgs.msg.Wrench.Resolve(msg.desired_wrench)
    }
    else {
      resolved.desired_wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.actual_pose !== undefined) {
      resolved.actual_pose = geometry_msgs.msg.Pose.Resolve(msg.actual_pose)
    }
    else {
      resolved.actual_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.actual_wrench !== undefined) {
      resolved.actual_wrench = geometry_msgs.msg.Wrench.Resolve(msg.actual_wrench)
    }
    else {
      resolved.actual_wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.error_pose !== undefined) {
      resolved.error_pose = geometry_msgs.msg.Pose.Resolve(msg.error_pose)
    }
    else {
      resolved.error_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.error_wrench !== undefined) {
      resolved.error_wrench = geometry_msgs.msg.Wrench.Resolve(msg.error_wrench)
    }
    else {
      resolved.error_wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.time_from_start !== undefined) {
      resolved.time_from_start = std_msgs.msg.Duration.Resolve(msg.time_from_start)
    }
    else {
      resolved.time_from_start = new std_msgs.msg.Duration()
    }

    return resolved;
    }
};

module.exports = FollowWorkspaceTrajectoryFeedback;
