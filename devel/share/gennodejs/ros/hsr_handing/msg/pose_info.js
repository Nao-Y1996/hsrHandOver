// Auto-generated. Do not edit!

// (in-package hsr_handing.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class pose_info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_identification_number = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_identification_number')) {
        this.pose_identification_number = initObj.pose_identification_number
      }
      else {
        this.pose_identification_number = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pose_info
    // Serialize message field [pose_identification_number]
    bufferOffset = _serializer.float32(obj.pose_identification_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pose_info
    let len;
    let data = new pose_info(null);
    // Deserialize message field [pose_identification_number]
    data.pose_identification_number = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hsr_handing/pose_info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2665a7040cc32206ef659f15e9d544d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 pose_identification_number
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pose_info(null);
    if (msg.pose_identification_number !== undefined) {
      resolved.pose_identification_number = msg.pose_identification_number;
    }
    else {
      resolved.pose_identification_number = 0.0
    }

    return resolved;
    }
};

module.exports = pose_info;
