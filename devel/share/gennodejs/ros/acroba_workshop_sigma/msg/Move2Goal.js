// Auto-generated. Do not edit!

// (in-package acroba_workshop_sigma.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Move2Goal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.turtle_name = null;
      this.speed = null;
      this.turtle_to_follow = null;
      this.follow_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('turtle_name')) {
        this.turtle_name = initObj.turtle_name
      }
      else {
        this.turtle_name = '';
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('turtle_to_follow')) {
        this.turtle_to_follow = initObj.turtle_to_follow
      }
      else {
        this.turtle_to_follow = '';
      }
      if (initObj.hasOwnProperty('follow_distance')) {
        this.follow_distance = initObj.follow_distance
      }
      else {
        this.follow_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Move2Goal
    // Serialize message field [turtle_name]
    bufferOffset = _serializer.string(obj.turtle_name, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [turtle_to_follow]
    bufferOffset = _serializer.string(obj.turtle_to_follow, buffer, bufferOffset);
    // Serialize message field [follow_distance]
    bufferOffset = _serializer.float32(obj.follow_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Move2Goal
    let len;
    let data = new Move2Goal(null);
    // Deserialize message field [turtle_name]
    data.turtle_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [turtle_to_follow]
    data.turtle_to_follow = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [follow_distance]
    data.follow_distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.turtle_name);
    length += _getByteLength(object.turtle_to_follow);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acroba_workshop_sigma/Move2Goal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4ce1b98da5af31f2ccce23c57ecbca1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #Define goal's message
    string turtle_name
    float32 speed
    string turtle_to_follow  
    float32 follow_distance  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Move2Goal(null);
    if (msg.turtle_name !== undefined) {
      resolved.turtle_name = msg.turtle_name;
    }
    else {
      resolved.turtle_name = ''
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.turtle_to_follow !== undefined) {
      resolved.turtle_to_follow = msg.turtle_to_follow;
    }
    else {
      resolved.turtle_to_follow = ''
    }

    if (msg.follow_distance !== undefined) {
      resolved.follow_distance = msg.follow_distance;
    }
    else {
      resolved.follow_distance = 0.0
    }

    return resolved;
    }
};

module.exports = Move2Goal;
