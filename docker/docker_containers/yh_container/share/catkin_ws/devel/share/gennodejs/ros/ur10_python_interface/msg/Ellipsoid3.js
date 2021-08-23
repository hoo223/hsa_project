// Auto-generated. Do not edit!

// (in-package ur10_python_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Ellipsoid3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
      this.u1 = null;
      this.u2 = null;
      this.u3 = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('u1')) {
        this.u1 = initObj.u1
      }
      else {
        this.u1 = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('u2')) {
        this.u2 = initObj.u2
      }
      else {
        this.u2 = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('u3')) {
        this.u3 = initObj.u3
      }
      else {
        this.u3 = new std_msgs.msg.Float64MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ellipsoid3
    // Serialize message field [s]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.s, buffer, bufferOffset);
    // Serialize message field [u1]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.u1, buffer, bufferOffset);
    // Serialize message field [u2]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.u2, buffer, bufferOffset);
    // Serialize message field [u3]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.u3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ellipsoid3
    let len;
    let data = new Ellipsoid3(null);
    // Deserialize message field [s]
    data.s = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [u1]
    data.u1 = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [u2]
    data.u2 = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [u3]
    data.u3 = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.s);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.u1);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.u2);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.u3);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur10_python_interface/Ellipsoid3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f6cdfc239b63a10b9b7c1e0e31d582b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float64MultiArray s
    std_msgs/Float64MultiArray u1
    std_msgs/Float64MultiArray u2
    std_msgs/Float64MultiArray u3
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
    const resolved = new Ellipsoid3(null);
    if (msg.s !== undefined) {
      resolved.s = std_msgs.msg.Float64MultiArray.Resolve(msg.s)
    }
    else {
      resolved.s = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.u1 !== undefined) {
      resolved.u1 = std_msgs.msg.Float64MultiArray.Resolve(msg.u1)
    }
    else {
      resolved.u1 = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.u2 !== undefined) {
      resolved.u2 = std_msgs.msg.Float64MultiArray.Resolve(msg.u2)
    }
    else {
      resolved.u2 = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.u3 !== undefined) {
      resolved.u3 = std_msgs.msg.Float64MultiArray.Resolve(msg.u3)
    }
    else {
      resolved.u3 = new std_msgs.msg.Float64MultiArray()
    }

    return resolved;
    }
};

module.exports = Ellipsoid3;
