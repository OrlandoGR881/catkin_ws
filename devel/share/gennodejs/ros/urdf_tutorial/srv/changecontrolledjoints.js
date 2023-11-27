// Auto-generated. Do not edit!

// (in-package urdf_tutorial.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class changecontrolledjointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.c1 = null;
      this.c2 = null;
    }
    else {
      if (initObj.hasOwnProperty('c1')) {
        this.c1 = initObj.c1
      }
      else {
        this.c1 = 0;
      }
      if (initObj.hasOwnProperty('c2')) {
        this.c2 = initObj.c2
      }
      else {
        this.c2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type changecontrolledjointsRequest
    // Serialize message field [c1]
    bufferOffset = _serializer.int32(obj.c1, buffer, bufferOffset);
    // Serialize message field [c2]
    bufferOffset = _serializer.int32(obj.c2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type changecontrolledjointsRequest
    let len;
    let data = new changecontrolledjointsRequest(null);
    // Deserialize message field [c1]
    data.c1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [c2]
    data.c2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'urdf_tutorial/changecontrolledjointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '283ee42b1d51b895e07842f960389784';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 c1
    int32 c2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new changecontrolledjointsRequest(null);
    if (msg.c1 !== undefined) {
      resolved.c1 = msg.c1;
    }
    else {
      resolved.c1 = 0
    }

    if (msg.c2 !== undefined) {
      resolved.c2 = msg.c2;
    }
    else {
      resolved.c2 = 0
    }

    return resolved;
    }
};

class changecontrolledjointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type changecontrolledjointsResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type changecontrolledjointsResponse
    let len;
    let data = new changecontrolledjointsResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'urdf_tutorial/changecontrolledjointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new changecontrolledjointsResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: changecontrolledjointsRequest,
  Response: changecontrolledjointsResponse,
  md5sum() { return '283ee42b1d51b895e07842f960389784'; },
  datatype() { return 'urdf_tutorial/changecontrolledjoints'; }
};
