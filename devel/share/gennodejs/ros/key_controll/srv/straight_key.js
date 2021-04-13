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

class straight_keyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.straight_key = null;
    }
    else {
      if (initObj.hasOwnProperty('straight_key')) {
        this.straight_key = initObj.straight_key
      }
      else {
        this.straight_key = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type straight_keyRequest
    // Serialize message field [straight_key]
    bufferOffset = _serializer.string(obj.straight_key, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type straight_keyRequest
    let len;
    let data = new straight_keyRequest(null);
    // Deserialize message field [straight_key]
    data.straight_key = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.straight_key.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'key_controll/straight_keyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73cef49066549fa5d2d8e4bb0ddd7550';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  straight_key
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new straight_keyRequest(null);
    if (msg.straight_key !== undefined) {
      resolved.straight_key = msg.straight_key;
    }
    else {
      resolved.straight_key = ''
    }

    return resolved;
    }
};

class straight_keyResponse {
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
    // Serializes a message object of type straight_keyResponse
    // Serialize message field [action_name]
    bufferOffset = _serializer.string(obj.action_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type straight_keyResponse
    let len;
    let data = new straight_keyResponse(null);
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
    return 'key_controll/straight_keyResponse';
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
    const resolved = new straight_keyResponse(null);
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
  Request: straight_keyRequest,
  Response: straight_keyResponse,
  md5sum() { return 'cbd8e12ce029666dd69311e278e5a145'; },
  datatype() { return 'key_controll/straight_key'; }
};
