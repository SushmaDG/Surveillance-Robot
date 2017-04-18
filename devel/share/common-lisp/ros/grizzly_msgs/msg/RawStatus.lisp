; Auto-generated. Do not edit!


(cl:in-package grizzly_msgs-msg)


;//! \htmlinclude RawStatus.msg.html

(cl:defclass <RawStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (user_current
    :reader user_current
    :initarg :user_current
    :type cl:float
    :initform 0.0)
   (body_temp_adc
    :reader body_temp_adc
    :initarg :body_temp_adc
    :type cl:float
    :initform 0.0)
   (fans_on
    :reader fans_on
    :initarg :fans_on
    :type cl:boolean
    :initform cl:nil)
   (rc_override
    :reader rc_override
    :initarg :rc_override
    :type cl:fixnum
    :initform 0)
   (rc_velocity
    :reader rc_velocity
    :initarg :rc_velocity
    :type cl:fixnum
    :initform 0)
   (rc_rotation
    :reader rc_rotation
    :initarg :rc_rotation
    :type cl:fixnum
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RawStatus (<RawStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grizzly_msgs-msg:<RawStatus> is deprecated: use grizzly_msgs-msg:RawStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:header-val is deprecated.  Use grizzly_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <RawStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:voltage-val is deprecated.  Use grizzly_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'user_current-val :lambda-list '(m))
(cl:defmethod user_current-val ((m <RawStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:user_current-val is deprecated.  Use grizzly_msgs-msg:user_current instead.")
  (user_current m))

(cl:ensure-generic-function 'body_temp_adc-val :lambda-list '(m))
(cl:defmethod body_temp_adc-val ((m <RawStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:body_temp_adc-val is deprecated.  Use grizzly_msgs-msg:body_temp_adc instead.")
  (body_temp_adc m))

(cl:ensure-generic-function 'fans_on-val :lambda-list '(m))
(cl:defmethod fans_on-val ((m <RawStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:fans_on-val is deprecated.  Use grizzly_msgs-msg:fans_on instead.")
  (fans_on m))

(cl:ensure-generic-function 'rc_override-val :lambda-list '(m))
(cl:defmethod rc_override-val ((m <RawStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:rc_override-val is deprecated.  Use grizzly_msgs-msg:rc_override instead.")
  (rc_override m))

(cl:ensure-generic-function 'rc_velocity-val :lambda-list '(m))
(cl:defmethod rc_velocity-val ((m <RawStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:rc_velocity-val is deprecated.  Use grizzly_msgs-msg:rc_velocity instead.")
  (rc_velocity m))

(cl:ensure-generic-function 'rc_rotation-val :lambda-list '(m))
(cl:defmethod rc_rotation-val ((m <RawStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:rc_rotation-val is deprecated.  Use grizzly_msgs-msg:rc_rotation instead.")
  (rc_rotation m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <RawStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:error-val is deprecated.  Use grizzly_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RawStatus>)))
    "Constants for message type '<RawStatus>"
  '((:ERROR_COMMAND_TIMEOUT . 1)
    (:ERROR_UNDERVOLT . 2)
    (:ERROR_ESTOP . 4)
    (:ERROR_ESTOP_RESET . 8)
    (:ERROR_BRK_DET . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RawStatus)))
    "Constants for message type 'RawStatus"
  '((:ERROR_COMMAND_TIMEOUT . 1)
    (:ERROR_UNDERVOLT . 2)
    (:ERROR_ESTOP . 4)
    (:ERROR_ESTOP_RESET . 8)
    (:ERROR_BRK_DET . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawStatus>) ostream)
  "Serializes a message object of type '<RawStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'user_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'body_temp_adc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fans_on) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rc_override)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc_velocity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rc_velocity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc_rotation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rc_rotation)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawStatus>) istream)
  "Deserializes a message object of type '<RawStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'user_current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'body_temp_adc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'fans_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rc_override) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc_velocity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rc_velocity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rc_rotation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rc_rotation)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawStatus>)))
  "Returns string type for a message object of type '<RawStatus>"
  "grizzly_msgs/RawStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawStatus)))
  "Returns string type for a message object of type 'RawStatus"
  "grizzly_msgs/RawStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawStatus>)))
  "Returns md5sum for a message object of type '<RawStatus>"
  "1f60c3c0abd6518a31d1f3fa02872ac9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawStatus)))
  "Returns md5sum for a message object of type 'RawStatus"
  "1f60c3c0abd6518a31d1f3fa02872ac9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawStatus>)))
  "Returns full string definition for message of type '<RawStatus>"
  (cl:format cl:nil "Header header~%~%float32 voltage       # [V] Main 48V bus voltage~%float32 user_current  # [A] Total power draw from regulated rails~%float32 body_temp_adc # [C] Temperature adc reading of enclosure~%bool fans_on        # TRUE when fans on~%~%int16 rc_override   # [us] Pulse length of this channel~%uint16 rc_velocity  # [us] Pulse length of this channel~%uint16 rc_rotation  # [us] Pulse length of this channel~%~%uint8 error~%uint8 ERROR_COMMAND_TIMEOUT=1~%uint8 ERROR_UNDERVOLT=2~%uint8 ERROR_ESTOP=4~%uint8 ERROR_ESTOP_RESET=8~%uint8 ERROR_BRK_DET=16~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawStatus)))
  "Returns full string definition for message of type 'RawStatus"
  (cl:format cl:nil "Header header~%~%float32 voltage       # [V] Main 48V bus voltage~%float32 user_current  # [A] Total power draw from regulated rails~%float32 body_temp_adc # [C] Temperature adc reading of enclosure~%bool fans_on        # TRUE when fans on~%~%int16 rc_override   # [us] Pulse length of this channel~%uint16 rc_velocity  # [us] Pulse length of this channel~%uint16 rc_rotation  # [us] Pulse length of this channel~%~%uint8 error~%uint8 ERROR_COMMAND_TIMEOUT=1~%uint8 ERROR_UNDERVOLT=2~%uint8 ERROR_ESTOP=4~%uint8 ERROR_ESTOP_RESET=8~%uint8 ERROR_BRK_DET=16~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     1
     2
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RawStatus
    (cl:cons ':header (header msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':user_current (user_current msg))
    (cl:cons ':body_temp_adc (body_temp_adc msg))
    (cl:cons ':fans_on (fans_on msg))
    (cl:cons ':rc_override (rc_override msg))
    (cl:cons ':rc_velocity (rc_velocity msg))
    (cl:cons ':rc_rotation (rc_rotation msg))
    (cl:cons ':error (error msg))
))
