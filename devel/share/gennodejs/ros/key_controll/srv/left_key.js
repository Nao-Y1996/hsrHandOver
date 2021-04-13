// Auto-generated. Do not edit!

// (in-package key_controll.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class left_keyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_key = null;
    }
    else {
      if (initObj.hasOwnProperty('left_key')) {
        this.left_key = initObj.left_key
      }
      else {
        this.left_key = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type left_keyRequest
    // Serialize message field [left_key]
    bufferOffset = _serializer.string(obj.left_key, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type left_keyRequest
    let len;
    let data = new left_keyRequest(null);
    // Deserialize message field [left_key]
    data.left_key = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.left_key.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'key_controll/left_keyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5c3d091b873358c16e24bdff2c1767a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  left_key
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new left_keyRequest(null);
    if (msg.left_key !== undefined) {
      resolved.left_key = msg.left_key;
    }
    else {
      resolved.left_key = ''
    }

    return resolved;
    }
};

class left_keyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_name = null;
    }
    else {
      if (initObj.hasOwnProperty('action_name')) {
        this.action_name = initObj.action_name
      }
      else {
        this.action_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type left_keyResponse
    // Serialize message field [action_name]
    bufferOffset = _serializer.string(obj.action_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type left_keyResponse
    let len;
    let data = new left_keyResponse(null);
    // Deserialize message field [action_name]
    data.action_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.action_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'key_controll/left_keyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4d9ec8eb1541d8a917c71ed6f9b1654';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string action_name
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new left_keyResponse(null);
    if (msg.action_name !== undefined) {
      resolved.action_name = msg.action_name;
    }
    else {
      resolved.action_name = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: left_keyRequest,
  Response: left_keyResponse,
  md5sum() { return '92cc5915248733a71486eaf081ac9e84'; },
  datatype() { return 'key_controll/left_key'; }
};
