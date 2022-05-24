// Auto-generated. Do not edit!

// (in-package pokemon_exploration.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StartGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_to_wall = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_to_wall')) {
        this.distance_to_wall = initObj.distance_to_wall
      }
      else {
        this.distance_to_wall = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartGoal
    // Serialize message field [distance_to_wall]
    bufferOffset = _serializer.float64(obj.distance_to_wall, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartGoal
    let len;
    let data = new StartGoal(null);
    // Deserialize message field [distance_to_wall]
    data.distance_to_wall = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pokemon_exploration/StartGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd51d1fafc04bc3bcfc4202d9e0715200';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal
    float64 distance_to_wall
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartGoal(null);
    if (msg.distance_to_wall !== undefined) {
      resolved.distance_to_wall = msg.distance_to_wall;
    }
    else {
      resolved.distance_to_wall = 0.0
    }

    return resolved;
    }
};

module.exports = StartGoal;
