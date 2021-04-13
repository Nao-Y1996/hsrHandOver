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

class grasp_key {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.grasp_key = null;
    }
    else {
      if (initObj.hasOwnProperty('grasp_key')) {
        this.grasp_key = initObj.grasp_key
      }
      else {
        this.grasp_key = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type grasp_key
    // Serialize message field [grasp_key]
    bufferOffset = _serializer.string(obj.grasp_key, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type grasp_key
    let len;
    let data = new grasp_key(null);
    // Deserialize message field [grasp_key]
    data.grasp_key = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.grasp_key.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pre_experiment/grasp_key';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3833578282f3854b4d750588d5638a4c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string grasp_key
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new grasp_key(null);
    if (msg.grasp_key !== undefined) {
      resolved.grasp_key = msg.grasp_key;
    }
    else {
      resolved.grasp_key = ''
    }

    return resolved;
    }
};

module.exports = grasp_key;
