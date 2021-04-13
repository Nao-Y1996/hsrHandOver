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

class back_keyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.back_key = null;
    }
    else {
      if (initObj.hasOwnProperty('back_key')) {
        this.back_key = initObj.back_key
      }
      else {
        this.back_key = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type back_keyRequest
    // Serialize message field [back_key]
    bufferOffset = _serializer.string(obj.back_key, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type back_keyRequest
    let len;
    let data = new back_keyRequest(null);
    // Deserialize message field [back_key]
    data.back_key = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.back_key.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'key_controll/back_keyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '593c452cb0abe92dd91e6a781a2e3c66';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  back_key
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new back_keyRequest(null);
    if (msg.back_key !== undefined) {
      resolved.back_key = msg.back_key;
    }
    else {
      resolved.back_key = ''
    }

    return resolved;
    }
};

class back_keyResponse {
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
    // Serializes a message object of type back_keyResponse
    // Serialize message field [action_name]
    bufferOffset = _serializer.string(obj.action_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type back_keyResponse
    let len;
    let data = new back_keyResponse(null);
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
    return 'key_controll/back_keyResponse';
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
    const resolved = new back_keyResponse(null);
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
  Request: back_keyRequest,
  Response: back_keyResponse,
  md5sum() { return 'ec0067f1ae04091f857aa4aada8b0360'; },
  datatype() { return 'key_controll/back_key'; }
};
