// Auto-generated. Do not edit!

// (in-package grizzly_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RawStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.voltage = null;
      this.user_current = null;
      this.body_temp_adc = null;
      this.fans_on = null;
      this.rc_override = null;
      this.rc_velocity = null;
      this.rc_rotation = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('user_current')) {
        this.user_current = initObj.user_current
      }
      else {
        this.user_current = 0.0;
      }
      if (initObj.hasOwnProperty('body_temp_adc')) {
        this.body_temp_adc = initObj.body_temp_adc
      }
      else {
        this.body_temp_adc = 0.0;
      }
      if (initObj.hasOwnProperty('fans_on')) {
        this.fans_on = initObj.fans_on
      }
      else {
        this.fans_on = false;
      }
      if (initObj.hasOwnProperty('rc_override')) {
        this.rc_override = initObj.rc_override
      }
      else {
        this.rc_override = 0;
      }
      if (initObj.hasOwnProperty('rc_velocity')) {
        this.rc_velocity = initObj.rc_velocity
      }
      else {
        this.rc_velocity = 0;
      }
      if (initObj.hasOwnProperty('rc_rotation')) {
        this.rc_rotation = initObj.rc_rotation
      }
      else {
        this.rc_rotation = 0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.float32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [user_current]
    bufferOffset = _serializer.float32(obj.user_current, buffer, bufferOffset);
    // Serialize message field [body_temp_adc]
    bufferOffset = _serializer.float32(obj.body_temp_adc, buffer, bufferOffset);
    // Serialize message field [fans_on]
    bufferOffset = _serializer.bool(obj.fans_on, buffer, bufferOffset);
    // Serialize message field [rc_override]
    bufferOffset = _serializer.int16(obj.rc_override, buffer, bufferOffset);
    // Serialize message field [rc_velocity]
    bufferOffset = _serializer.uint16(obj.rc_velocity, buffer, bufferOffset);
    // Serialize message field [rc_rotation]
    bufferOffset = _serializer.uint16(obj.rc_rotation, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.uint8(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawStatus
    let len;
    let data = new RawStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [user_current]
    data.user_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [body_temp_adc]
    data.body_temp_adc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fans_on]
    data.fans_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rc_override]
    data.rc_override = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rc_velocity]
    data.rc_velocity = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rc_rotation]
    data.rc_rotation = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'grizzly_msgs/RawStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f60c3c0abd6518a31d1f3fa02872ac9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float32 voltage       # [V] Main 48V bus voltage
    float32 user_current  # [A] Total power draw from regulated rails
    float32 body_temp_adc # [C] Temperature adc reading of enclosure
    bool fans_on        # TRUE when fans on
    
    int16 rc_override   # [us] Pulse length of this channel
    uint16 rc_velocity  # [us] Pulse length of this channel
    uint16 rc_rotation  # [us] Pulse length of this channel
    
    uint8 error
    uint8 ERROR_COMMAND_TIMEOUT=1
    uint8 ERROR_UNDERVOLT=2
    uint8 ERROR_ESTOP=4
    uint8 ERROR_ESTOP_RESET=8
    uint8 ERROR_BRK_DET=16
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RawStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.user_current !== undefined) {
      resolved.user_current = msg.user_current;
    }
    else {
      resolved.user_current = 0.0
    }

    if (msg.body_temp_adc !== undefined) {
      resolved.body_temp_adc = msg.body_temp_adc;
    }
    else {
      resolved.body_temp_adc = 0.0
    }

    if (msg.fans_on !== undefined) {
      resolved.fans_on = msg.fans_on;
    }
    else {
      resolved.fans_on = false
    }

    if (msg.rc_override !== undefined) {
      resolved.rc_override = msg.rc_override;
    }
    else {
      resolved.rc_override = 0
    }

    if (msg.rc_velocity !== undefined) {
      resolved.rc_velocity = msg.rc_velocity;
    }
    else {
      resolved.rc_velocity = 0
    }

    if (msg.rc_rotation !== undefined) {
      resolved.rc_rotation = msg.rc_rotation;
    }
    else {
      resolved.rc_rotation = 0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    return resolved;
    }
};

// Constants for message
RawStatus.Constants = {
  ERROR_COMMAND_TIMEOUT: 1,
  ERROR_UNDERVOLT: 2,
  ERROR_ESTOP: 4,
  ERROR_ESTOP_RESET: 8,
  ERROR_BRK_DET: 16,
}

module.exports = RawStatus;
