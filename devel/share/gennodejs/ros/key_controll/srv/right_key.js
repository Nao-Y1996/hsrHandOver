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

class right_keyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.right_key = null;
    }
    else {
      if (initObj.hasOwnProperty('right_key')) {
        this.right_key = initObj.right_key
      }
      else {
        this.right_key = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type right_keyRequest
    // Serialize message field [right_key]
    bufferOffset = _serializer.string(obj.right_key, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type right_keyRequest
    let len;
    let data = new right_keyRequest(null);
    // Deserialize message field [right_key]
    data.right_key = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.right_key.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'key_controll/right_keyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44ffa9b2f6e3c23fd596b80adac9c72d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  right_key
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new right_keyRequest(null);
    if (msg.right_key !== undefined) {
      resolved.right_key = msg.right_key;
    }
    else {
      resolved.right_key = ''
    }

    return resolved;
    }
};

class right_keyResponse {
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
    // Serializes a message object of type right_keyResponse
    // Serialize message field [action_name]
    bufferOffset = _serializer.string(obj.action_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type right_keyResponse
    let len;
    let data = new right_keyResponse(null);
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
    return 'key_controll/right_keyResponse';
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
    const resolved = new right_keyResponse(null);
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
  Request: right_keyRequest,
  Response: right_keyResponse,
  md5sum() { return 'd08d8dc0caa70812602fb3a50e31f337'; },
  datatype() { return 'key_controll/right_key'; }
};
