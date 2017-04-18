; Auto-generated. Do not edit!


(cl:in-package grizzly_msgs-msg)


;//! \htmlinclude Ambience.msg.html

(cl:defclass <Ambience> (roslisp-msg-protocol:ros-message)
  ((position_light
    :reader position_light
    :initarg :position_light
    :type cl:fixnum
    :initform 0)
   (autopilot_light
    :reader autopilot_light
    :initarg :autopilot_light
    :type cl:fixnum
    :initform 0)
   (beacon
    :reader beacon
    :initarg :beacon
    :type cl:fixnum
    :initform 0)
   (headlight
    :reader headlight
    :initarg :headlight
    :type cl:fixnum
    :initform 0)
   (taillight
    :reader taillight
    :initarg :taillight
    :type cl:fixnum
    :initform 0)
   (beep
    :reader beep
    :initarg :beep
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ambience (<Ambience>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ambience>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ambience)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grizzly_msgs-msg:<Ambience> is deprecated: use grizzly_msgs-msg:Ambience instead.")))

(cl:ensure-generic-function 'position_light-val :lambda-list '(m))
(cl:defmethod position_light-val ((m <Ambience>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:position_light-val is deprecated.  Use grizzly_msgs-msg:position_light instead.")
  (position_light m))

(cl:ensure-generic-function 'autopilot_light-val :lambda-list '(m))
(cl:defmethod autopilot_light-val ((m <Ambience>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:autopilot_light-val is deprecated.  Use grizzly_msgs-msg:autopilot_light instead.")
  (autopilot_light m))

(cl:ensure-generic-function 'beacon-val :lambda-list '(m))
(cl:defmethod beacon-val ((m <Ambience>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:beacon-val is deprecated.  Use grizzly_msgs-msg:beacon instead.")
  (beacon m))

(cl:ensure-generic-function 'headlight-val :lambda-list '(m))
(cl:defmethod headlight-val ((m <Ambience>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:headlight-val is deprecated.  Use grizzly_msgs-msg:headlight instead.")
  (headlight m))

(cl:ensure-generic-function 'taillight-val :lambda-list '(m))
(cl:defmethod taillight-val ((m <Ambience>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:taillight-val is deprecated.  Use grizzly_msgs-msg:taillight instead.")
  (taillight m))

(cl:ensure-generic-function 'beep-val :lambda-list '(m))
(cl:defmethod beep-val ((m <Ambience>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grizzly_msgs-msg:beep-val is deprecated.  Use grizzly_msgs-msg:beep instead.")
  (beep m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ambience>)))
    "Constants for message type '<Ambience>"
  '((:PATTERN_ON . 255)
    (:PATTERN_FLASH . 15)
    (:PATTERN_DFLASH . 9)
    (:PATTERN_QUICKFLASH . 1)
    (:PATTERN_OFF . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ambience)))
    "Constants for message type 'Ambience"
  '((:PATTERN_ON . 255)
    (:PATTERN_FLASH . 15)
    (:PATTERN_DFLASH . 9)
    (:PATTERN_QUICKFLASH . 1)
    (:PATTERN_OFF . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ambience>) ostream)
  "Serializes a message object of type '<Ambience>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'autopilot_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'beacon)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headlight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taillight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'beep)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ambience>) istream)
  "Deserializes a message object of type '<Ambience>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'autopilot_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'beacon)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headlight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'taillight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'beep)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ambience>)))
  "Returns string type for a message object of type '<Ambience>"
  "grizzly_msgs/Ambience")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ambience)))
  "Returns string type for a message object of type 'Ambience"
  "grizzly_msgs/Ambience")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ambience>)))
  "Returns md5sum for a message object of type '<Ambience>"
  "61f98d62162f451c695060a2c339b6b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ambience)))
  "Returns md5sum for a message object of type 'Ambience"
  "61f98d62162f451c695060a2c339b6b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ambience>)))
  "Returns full string definition for message of type '<Ambience>"
  (cl:format cl:nil "uint8 PATTERN_ON=255~%uint8 PATTERN_FLASH=15~%uint8 PATTERN_DFLASH=9~%uint8 PATTERN_QUICKFLASH=1~%uint8 PATTERN_OFF=0~%~%uint8 position_light    # Signal the status of the GPS system~%uint8 autopilot_light   # Signal if the system is under automatic or manual control~%uint8 beacon     # Overhead beacon flash pattern~%uint8 headlight  # Headlight flash pattern~%uint8 taillight  # Taillight flash pattern~%uint8 beep   # Noisemaker sound pattern~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ambience)))
  "Returns full string definition for message of type 'Ambience"
  (cl:format cl:nil "uint8 PATTERN_ON=255~%uint8 PATTERN_FLASH=15~%uint8 PATTERN_DFLASH=9~%uint8 PATTERN_QUICKFLASH=1~%uint8 PATTERN_OFF=0~%~%uint8 position_light    # Signal the status of the GPS system~%uint8 autopilot_light   # Signal if the system is under automatic or manual control~%uint8 beacon     # Overhead beacon flash pattern~%uint8 headlight  # Headlight flash pattern~%uint8 taillight  # Taillight flash pattern~%uint8 beep   # Noisemaker sound pattern~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ambience>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ambience>))
  "Converts a ROS message object to a list"
  (cl:list 'Ambience
    (cl:cons ':position_light (position_light msg))
    (cl:cons ':autopilot_light (autopilot_light msg))
    (cl:cons ':beacon (beacon msg))
    (cl:cons ':headlight (headlight msg))
    (cl:cons ':taillight (taillight msg))
    (cl:cons ':beep (beep msg))
))
