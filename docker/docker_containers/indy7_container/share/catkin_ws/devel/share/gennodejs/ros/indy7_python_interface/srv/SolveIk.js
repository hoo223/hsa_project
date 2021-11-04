// Auto-generated. Do not edit!

// (in-package indy7_python_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SolveIkRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.end_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('end_pose')) {
        this.end_pose = initObj.end_pose
      }
      else {
        this.end_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SolveIkRequest
    // Serialize message field [end_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.end_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SolveIkRequest
    let len;
    let data = new SolveIkRequest(null);
    // Deserialize message field [end_pose]
    data.end_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'indy7_python_interface/SolveIkRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08fee3ac26cd0926e5d192afd941fb4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose end_pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SolveIkRequest(null);
    if (msg.end_pose !== undefined) {
      resolved.end_pose = geometry_msgs.msg.Pose.Resolve(msg.end_pose)
    }
    else {
      resolved.end_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class SolveIkResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ik_result = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('ik_result')) {
        this.ik_result = initObj.ik_result
      }
      else {
        this.ik_result = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SolveIkResponse
    // Serialize message field [ik_result]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.ik_result, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SolveIkResponse
    let len;
    let data = new SolveIkResponse(null);
    // Deserialize message field [ik_result]
    data.ik_result = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.ik_result);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'indy7_python_interface/SolveIkResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60cb5217e9c62c0eebb58bfe7d4bf769';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64MultiArray ik_result
    bool success
    
    
    ================================================================================
    MSG: std_msgs/Float64MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float64[]         data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SolveIkResponse(null);
    if (msg.ik_result !== undefined) {
      resolved.ik_result = std_msgs.msg.Float64MultiArray.Resolve(msg.ik_result)
    }
    else {
      resolved.ik_result = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SolveIkRequest,
  Response: SolveIkResponse,
  md5sum() { return '6580254afbe9e0087fa243dc6fb4dd77'; },
  datatype() { return 'indy7_python_interface/SolveIk'; }
};
