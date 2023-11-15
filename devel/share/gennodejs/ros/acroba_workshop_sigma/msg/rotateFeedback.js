// Auto-generated. Do not edit!

// (in-package acroba_workshop_sigma.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let turtlesim = _finder('turtlesim');

//-----------------------------------------------------------

class RotateFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new turtlesim.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RotateFeedback
    // Serialize message field [pose]
    bufferOffset = turtlesim.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RotateFeedback
    let len;
    let data = new RotateFeedback(null);
    // Deserialize message field [pose]
    data.pose = turtlesim.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'acroba_workshop_sigma/RotateFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '582239f3e6c49527a893bd9673357b39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #Define feedback's message
    turtlesim/Pose pose
    
    
    ================================================================================
    MSG: turtlesim/Pose
    float32 x
    float32 y
    float32 theta
    
    float32 linear_velocity
    float32 angular_velocity
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RotateFeedback(null);
    if (msg.pose !== undefined) {
      resolved.pose = turtlesim.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new turtlesim.msg.Pose()
    }

    return resolved;
    }
};

module.exports = RotateFeedback;
