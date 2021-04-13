// Auto-generated. Do not edit!

// (in-package pre_experiment.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class input4handingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_key = null;
    }
    else {
      if (initObj.hasOwnProperty('input_key')) {
        this.input_key = initObj.input_key
      }
      else {
        this.input_key = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type input4handingRequest
    // Serialize message field [input_key]
    bufferOffset = _serializer.string(obj.input_key, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type input4handingRequest
    let len;
    let data = new input4handingRequest(null);
    // Deserialize message field [input_key]
    data.input_key = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.input_key.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pre_experiment/input4handingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cabbd19ea8b4c39ec634679b262a6b4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  input_key
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new input4handingRequest(null);
    if (msg.input_key !== undefined) {
      resolved.input_key = msg.input_key;
    }
    else {
      resolved.input_key = ''
    }

    return resolved;
    }
};

class input4handingResponse {
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
    // Serializes a message object of type input4handingResponse
    // Serialize message field [action_name]
    bufferOffset = _serializer.string(obj.action_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type input4handingResponse
    let len;
    let data = new input4handingResponse(null);
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
    return 'pre_experiment/input4handingResponse';
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
    const resolved = new input4handingResponse(null);
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
  Request: input4handingRequest,
  Response: input4handingResponse,
  md5sum() { return '7fe954f65abd774fd7fd0cc14c5c3b00'; },
  datatype() { return 'pre_experiment/input4handing'; }
};
