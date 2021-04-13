// Auto-generated. Do not edit!

// (in-package pre_experiment.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class face_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.face_depth = null;
      this.center_depth = null;
      this.face_x = null;
      this.face_y = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('face_depth')) {
        this.face_depth = initObj.face_depth
      }
      else {
        this.face_depth = 0.0;
      }
      if (initObj.hasOwnProperty('center_depth')) {
        this.center_depth = initObj.center_depth
      }
      else {
        this.center_depth = 0.0;
      }
      if (initObj.hasOwnProperty('face_x')) {
        this.face_x = initObj.face_x
      }
      else {
        this.face_x = 0.0;
      }
      if (initObj.hasOwnProperty('face_y')) {
        this.face_y = initObj.face_y
      }
      else {
        this.face_y = 0.0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type face_info
    // Serialize message field [face_depth]
    bufferOffset = _serializer.float32(obj.face_depth, buffer, bufferOffset);
    // Serialize message field [center_depth]
    bufferOffset = _serializer.float32(obj.center_depth, buffer, bufferOffset);
    // Serialize message field [face_x]
    bufferOffset = _serializer.float32(obj.face_x, buffer, bufferOffset);
    // Serialize message field [face_y]
    bufferOffset = _serializer.float32(obj.face_y, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type face_info
    let len;
    let data = new face_info(null);
    // Deserialize message field [face_depth]
    data.face_depth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [center_depth]
    data.center_depth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [face_x]
    data.face_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [face_y]
    data.face_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pre_experiment/face_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4cb0496d5db40586ebe568131f126a11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 face_depth
    float32 center_depth
    float32 face_x
    float32 face_y
    float32 time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new face_info(null);
    if (msg.face_depth !== undefined) {
      resolved.face_depth = msg.face_depth;
    }
    else {
      resolved.face_depth = 0.0
    }

    if (msg.center_depth !== undefined) {
      resolved.center_depth = msg.center_depth;
    }
    else {
      resolved.center_depth = 0.0
    }

    if (msg.face_x !== undefined) {
      resolved.face_x = msg.face_x;
    }
    else {
      resolved.face_x = 0.0
    }

    if (msg.face_y !== undefined) {
      resolved.face_y = msg.face_y;
    }
    else {
      resolved.face_y = 0.0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

module.exports = face_info;
