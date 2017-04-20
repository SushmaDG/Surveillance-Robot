;; Auto-generated. Do not edit!


(when (boundp 'grizzly_msgs::RawStatus)
  (if (not (find-package "GRIZZLY_MSGS"))
    (make-package "GRIZZLY_MSGS"))
  (shadow 'RawStatus (find-package "GRIZZLY_MSGS")))
(unless (find-package "GRIZZLY_MSGS::RAWSTATUS")
  (make-package "GRIZZLY_MSGS::RAWSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RawStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ERROR_COMMAND_TIMEOUT*" (find-package "GRIZZLY_MSGS::RAWSTATUS"))
(shadow '*ERROR_COMMAND_TIMEOUT* (find-package "GRIZZLY_MSGS::RAWSTATUS"))
(defconstant grizzly_msgs::RawStatus::*ERROR_COMMAND_TIMEOUT* 1)
(intern "*ERROR_UNDERVOLT*" (find-package "GRIZZLY_MSGS::RAWSTATUS"))
(shadow '*ERROR_UNDERVOLT* (find-package "GRIZZLY_MSGS::RAWSTATUS"))
(defconstant grizzly_msgs::RawStatus::*ERROR_UNDERVOLT* 2)
(intern "*ERROR_ESTOP*" (find-package "GRIZZLY_MSGS::RAWSTATUS"))
(shadow '*ERROR_ESTOP* (find-package "GRIZZLY_MSGS::RAWSTATUS"))
(defconstant grizzly_msgs::RawStatus::*ERROR_ESTOP* 4)
(intern "*ERROR_ESTOP_RESET*" (find-package "GRIZZLY_MSGS::RAWSTATUS"))
(shadow '*ERROR_ESTOP_RESET* (find-package "GRIZZLY_MSGS::RAWSTATUS"))
(defconstant grizzly_msgs::RawStatus::*ERROR_ESTOP_RESET* 8)
(intern "*ERROR_BRK_DET*" (find-package "GRIZZLY_MSGS::RAWSTATUS"))
(shadow '*ERROR_BRK_DET* (find-package "GRIZZLY_MSGS::RAWSTATUS"))
(defconstant grizzly_msgs::RawStatus::*ERROR_BRK_DET* 16)
(defclass grizzly_msgs::RawStatus
  :super ros::object
  :slots (_header _voltage _user_current _body_temp_adc _fans_on _rc_override _rc_velocity _rc_rotation _error ))

(defmethod grizzly_msgs::RawStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:voltage __voltage) 0.0)
    ((:user_current __user_current) 0.0)
    ((:body_temp_adc __body_temp_adc) 0.0)
    ((:fans_on __fans_on) nil)
    ((:rc_override __rc_override) 0)
    ((:rc_velocity __rc_velocity) 0)
    ((:rc_rotation __rc_rotation) 0)
    ((:error __error) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _voltage (float __voltage))
   (setq _user_current (float __user_current))
   (setq _body_temp_adc (float __body_temp_adc))
   (setq _fans_on __fans_on)
   (setq _rc_override (round __rc_override))
   (setq _rc_velocity (round __rc_velocity))
   (setq _rc_rotation (round __rc_rotation))
   (setq _error (round __error))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:user_current
   (&optional __user_current)
   (if __user_current (setq _user_current __user_current)) _user_current)
  (:body_temp_adc
   (&optional __body_temp_adc)
   (if __body_temp_adc (setq _body_temp_adc __body_temp_adc)) _body_temp_adc)
  (:fans_on
   (&optional __fans_on)
   (if __fans_on (setq _fans_on __fans_on)) _fans_on)
  (:rc_override
   (&optional __rc_override)
   (if __rc_override (setq _rc_override __rc_override)) _rc_override)
  (:rc_velocity
   (&optional __rc_velocity)
   (if __rc_velocity (setq _rc_velocity __rc_velocity)) _rc_velocity)
  (:rc_rotation
   (&optional __rc_rotation)
   (if __rc_rotation (setq _rc_rotation __rc_rotation)) _rc_rotation)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _voltage
    4
    ;; float32 _user_current
    4
    ;; float32 _body_temp_adc
    4
    ;; bool _fans_on
    1
    ;; int16 _rc_override
    2
    ;; uint16 _rc_velocity
    2
    ;; uint16 _rc_rotation
    2
    ;; uint8 _error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _user_current
       (sys::poke _user_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _body_temp_adc
       (sys::poke _body_temp_adc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _fans_on
       (if _fans_on (write-byte -1 s) (write-byte 0 s))
     ;; int16 _rc_override
       (write-word _rc_override s)
     ;; uint16 _rc_velocity
       (write-word _rc_velocity s)
     ;; uint16 _rc_rotation
       (write-word _rc_rotation s)
     ;; uint8 _error
       (write-byte _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _user_current
     (setq _user_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _body_temp_adc
     (setq _body_temp_adc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _fans_on
     (setq _fans_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _rc_override
     (setq _rc_override (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _rc_velocity
     (setq _rc_velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _rc_rotation
     (setq _rc_rotation (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _error
     (setq _error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get grizzly_msgs::RawStatus :md5sum-) "1f60c3c0abd6518a31d1f3fa02872ac9")
(setf (get grizzly_msgs::RawStatus :datatype-) "grizzly_msgs/RawStatus")
(setf (get grizzly_msgs::RawStatus :definition-)
      "Header header

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

")



(provide :grizzly_msgs/RawStatus "1f60c3c0abd6518a31d1f3fa02872ac9")


