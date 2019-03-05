// Auto-generated. Do not edit!

// (in-package asimov_tasks_package.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class calc_serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num1 = null;
      this.num2 = null;
      this.operation_id = null;
    }
    else {
      if (initObj.hasOwnProperty('num1')) {
        this.num1 = initObj.num1
      }
      else {
        this.num1 = 0.0;
      }
      if (initObj.hasOwnProperty('num2')) {
        this.num2 = initObj.num2
      }
      else {
        this.num2 = 0.0;
      }
      if (initObj.hasOwnProperty('operation_id')) {
        this.operation_id = initObj.operation_id
      }
      else {
        this.operation_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type calc_serviceRequest
    // Serialize message field [num1]
    bufferOffset = _serializer.float64(obj.num1, buffer, bufferOffset);
    // Serialize message field [num2]
    bufferOffset = _serializer.float64(obj.num2, buffer, bufferOffset);
    // Serialize message field [operation_id]
    bufferOffset = _serializer.int64(obj.operation_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type calc_serviceRequest
    let len;
    let data = new calc_serviceRequest(null);
    // Deserialize message field [num1]
    data.num1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [num2]
    data.num2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [operation_id]
    data.operation_id = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'asimov_tasks_package/calc_serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e93988f335420779d1352069758f466';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 num1
    float64 num2
    int64 operation_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new calc_serviceRequest(null);
    if (msg.num1 !== undefined) {
      resolved.num1 = msg.num1;
    }
    else {
      resolved.num1 = 0.0
    }

    if (msg.num2 !== undefined) {
      resolved.num2 = msg.num2;
    }
    else {
      resolved.num2 = 0.0
    }

    if (msg.operation_id !== undefined) {
      resolved.operation_id = msg.operation_id;
    }
    else {
      resolved.operation_id = 0
    }

    return resolved;
    }
};

class calc_serviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type calc_serviceResponse
    // Serialize message field [result]
    bufferOffset = _serializer.float64(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type calc_serviceResponse
    let len;
    let data = new calc_serviceResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'asimov_tasks_package/calc_serviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '254fb2d8c4e08eff5dc6a560ed51dd52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new calc_serviceResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: calc_serviceRequest,
  Response: calc_serviceResponse,
  md5sum() { return '1b84c9a3d2a8829a1c1fff193adfda10'; },
  datatype() { return 'asimov_tasks_package/calc_service'; }
};
