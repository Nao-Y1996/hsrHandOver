// Auto-generated. Do not edit!

// (in-package hsr_handing.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class fuzzyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fy = null;
      this.fz = null;
      this.old_fy = null;
      this.old_fz = null;
    }
    else {
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = 0.0;
      }
      if (initObj.hasOwnProperty('fz')) {
        this.fz = initObj.fz
      }
      else {
        this.fz = 0.0;
      }
      if (initObj.hasOwnProperty('old_fy')) {
        this.old_fy = initObj.old_fy
      }
      else {
        this.old_fy = 0.0;
      }
      if (initObj.hasOwnProperty('old_fz')) {
        this.old_fz = initObj.old_fz
      }
      else {
        this.old_fz = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fuzzyRequest
    // Serialize message field [fy]
    bufferOffset = _serializer.float64(obj.fy, buffer, bufferOffset);
    // Serialize message field [fz]
    bufferOffset = _serializer.float64(obj.fz, buffer, bufferOffset);
    // Serialize message field [old_fy]
    bufferOffset = _serializer.float64(obj.old_fy, buffer, bufferOffset);
    // Serialize message field [old_fz]
    bufferOffset = _serializer.float64(obj.old_fz, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fuzzyRequest
    let len;
    let data = new fuzzyRequest(null);
    // Deserialize message field [fy]
    data.fy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fz]
    data.fz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [old_fy]
    data.old_fy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [old_fz]
    data.old_fz = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hsr_handing/fuzzyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4092824968e99178240b7f45104d4572';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 fy
    float64 fz
    float64 old_fy
    float64 old_fz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fuzzyRequest(null);
    if (msg.fy !== undefined) {
      resolved.fy = msg.fy;
    }
    else {
      resolved.fy = 0.0
    }

    if (msg.fz !== undefined) {
      resolved.fz = msg.fz;
    }
    else {
      resolved.fz = 0.0
    }

    if (msg.old_fy !== undefined) {
      resolved.old_fy = msg.old_fy;
    }
    else {
      resolved.old_fy = 0.0
    }

    if (msg.old_fz !== undefined) {
      resolved.old_fz = msg.old_fz;
    }
    else {
      resolved.old_fz = 0.0
    }

    return resolved;
    }
};

class fuzzyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.ek = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('ek')) {
        this.ek = initObj.ek
      }
      else {
        this.ek = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type fuzzyResponse
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [ek]
    bufferOffset = _serializer.float64(obj.ek, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type fuzzyResponse
    let len;
    let data = new fuzzyResponse(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ek]
    data.ek = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hsr_handing/fuzzyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8fe105539d9eff0c116c131922ede9dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 x
    float64 y
    float64 ek
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new fuzzyResponse(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.ek !== undefined) {
      resolved.ek = msg.ek;
    }
    else {
      resolved.ek = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: fuzzyRequest,
  Response: fuzzyResponse,
  md5sum() { return 'c8c38984a6ef7601852535eddb6b97ca'; },
  datatype() { return 'hsr_handing/fuzzy'; }
};
