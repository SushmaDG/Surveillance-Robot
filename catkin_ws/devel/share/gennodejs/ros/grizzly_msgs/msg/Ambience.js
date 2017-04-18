// Auto-generated. Do not edit!

// (in-package grizzly_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Ambience {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_light = null;
      this.autopilot_light = null;
      this.beacon = null;
      this.headlight = null;
      this.taillight = null;
      this.beep = null;
    }
    else {
      if (initObj.hasOwnProperty('position_light')) {
        this.position_light = initObj.position_light
      }
      else {
        this.position_light = 0;
      }
      if (initObj.hasOwnProperty('autopilot_light')) {
        this.autopilot_light = initObj.autopilot_light
      }
      else {
        this.autopilot_light = 0;
      }
      if (initObj.hasOwnProperty('beacon')) {
        this.beacon = initObj.beacon
      }
      else {
        this.beacon = 0;
      }
      if (initObj.hasOwnProperty('headlight')) {
        this.headlight = initObj.headlight
      }
      else {
        this.headlight = 0;
      }
      if (initObj.hasOwnProperty('taillight')) {
        this.taillight = initObj.taillight
      }
      else {
        this.taillight = 0;
      }
      if (initObj.hasOwnProperty('beep')) {
        this.beep = initObj.beep
      }
      else {
        this.beep = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ambience
    // Serialize message field [position_light]
    bufferOffset = _serializer.uint8(obj.position_light, buffer, bufferOffset);
    // Serialize message field [autopilot_light]
    bufferOffset = _serializer.uint8(obj.autopilot_light, buffer, bufferOffset);
    // Serialize message field [beacon]
    bufferOffset = _serializer.uint8(obj.beacon, buffer, bufferOffset);
    // Serialize message field [headlight]
    bufferOffset = _serializer.uint8(obj.headlight, buffer, bufferOffset);
    // Serialize message field [taillight]
    bufferOffset = _serializer.uint8(obj.taillight, buffer, bufferOffset);
    // Serialize message field [beep]
    bufferOffset = _serializer.uint8(obj.beep, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ambience
    let len;
    let data = new Ambience(null);
    // Deserialize message field [position_light]
    data.position_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [autopilot_light]
    data.autopilot_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [beacon]
    data.beacon = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [headlight]
    data.headlight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [taillight]
    data.taillight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [beep]
    data.beep = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'grizzly_msgs/Ambience';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61f98d62162f451c695060a2c339b6b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PATTERN_ON=255
    uint8 PATTERN_FLASH=15
    uint8 PATTERN_DFLASH=9
    uint8 PATTERN_QUICKFLASH=1
    uint8 PATTERN_OFF=0
    
    uint8 position_light    # Signal the status of the GPS system
    uint8 autopilot_light   # Signal if the system is under automatic or manual control
    uint8 beacon     # Overhead beacon flash pattern
    uint8 headlight  # Headlight flash pattern
    uint8 taillight  # Taillight flash pattern
    uint8 beep   # Noisemaker sound pattern
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ambience(null);
    if (msg.position_light !== undefined) {
      resolved.position_light = msg.position_light;
    }
    else {
      resolved.position_light = 0
    }

    if (msg.autopilot_light !== undefined) {
      resolved.autopilot_light = msg.autopilot_light;
    }
    else {
      resolved.autopilot_light = 0
    }

    if (msg.beacon !== undefined) {
      resolved.beacon = msg.beacon;
    }
    else {
      resolved.beacon = 0
    }

    if (msg.headlight !== undefined) {
      resolved.headlight = msg.headlight;
    }
    else {
      resolved.headlight = 0
    }

    if (msg.taillight !== undefined) {
      resolved.taillight = msg.taillight;
    }
    else {
      resolved.taillight = 0
    }

    if (msg.beep !== undefined) {
      resolved.beep = msg.beep;
    }
    else {
      resolved.beep = 0
    }

    return resolved;
    }
};

// Constants for message
Ambience.Constants = {
  PATTERN_ON: 255,
  PATTERN_FLASH: 15,
  PATTERN_DFLASH: 9,
  PATTERN_QUICKFLASH: 1,
  PATTERN_OFF: 0,
}

module.exports = Ambience;
