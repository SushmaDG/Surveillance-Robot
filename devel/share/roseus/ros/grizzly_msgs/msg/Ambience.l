;; Auto-generated. Do not edit!


(when (boundp 'grizzly_msgs::Ambience)
  (if (not (find-package "GRIZZLY_MSGS"))
    (make-package "GRIZZLY_MSGS"))
  (shadow 'Ambience (find-package "GRIZZLY_MSGS")))
(unless (find-package "GRIZZLY_MSGS::AMBIENCE")
  (make-package "GRIZZLY_MSGS::AMBIENCE"))

(in-package "ROS")
;;//! \htmlinclude Ambience.msg.html


(intern "*PATTERN_ON*" (find-package "GRIZZLY_MSGS::AMBIENCE"))
(shadow '*PATTERN_ON* (find-package "GRIZZLY_MSGS::AMBIENCE"))
(defconstant grizzly_msgs::Ambience::*PATTERN_ON* 255)
(intern "*PATTERN_FLASH*" (find-package "GRIZZLY_MSGS::AMBIENCE"))
(shadow '*PATTERN_FLASH* (find-package "GRIZZLY_MSGS::AMBIENCE"))
(defconstant grizzly_msgs::Ambience::*PATTERN_FLASH* 15)
(intern "*PATTERN_DFLASH*" (find-package "GRIZZLY_MSGS::AMBIENCE"))
(shadow '*PATTERN_DFLASH* (find-package "GRIZZLY_MSGS::AMBIENCE"))
(defconstant grizzly_msgs::Ambience::*PATTERN_DFLASH* 9)
(intern "*PATTERN_QUICKFLASH*" (find-package "GRIZZLY_MSGS::AMBIENCE"))
(shadow '*PATTERN_QUICKFLASH* (find-package "GRIZZLY_MSGS::AMBIENCE"))
(defconstant grizzly_msgs::Ambience::*PATTERN_QUICKFLASH* 1)
(intern "*PATTERN_OFF*" (find-package "GRIZZLY_MSGS::AMBIENCE"))
(shadow '*PATTERN_OFF* (find-package "GRIZZLY_MSGS::AMBIENCE"))
(defconstant grizzly_msgs::Ambience::*PATTERN_OFF* 0)
(defclass grizzly_msgs::Ambience
  :super ros::object
  :slots (_position_light _autopilot_light _beacon _headlight _taillight _beep ))

(defmethod grizzly_msgs::Ambience
  (:init
   (&key
    ((:position_light __position_light) 0)
    ((:autopilot_light __autopilot_light) 0)
    ((:beacon __beacon) 0)
    ((:headlight __headlight) 0)
    ((:taillight __taillight) 0)
    ((:beep __beep) 0)
    )
   (send-super :init)
   (setq _position_light (round __position_light))
   (setq _autopilot_light (round __autopilot_light))
   (setq _beacon (round __beacon))
   (setq _headlight (round __headlight))
   (setq _taillight (round __taillight))
   (setq _beep (round __beep))
   self)
  (:position_light
   (&optional __position_light)
   (if __position_light (setq _position_light __position_light)) _position_light)
  (:autopilot_light
   (&optional __autopilot_light)
   (if __autopilot_light (setq _autopilot_light __autopilot_light)) _autopilot_light)
  (:beacon
   (&optional __beacon)
   (if __beacon (setq _beacon __beacon)) _beacon)
  (:headlight
   (&optional __headlight)
   (if __headlight (setq _headlight __headlight)) _headlight)
  (:taillight
   (&optional __taillight)
   (if __taillight (setq _taillight __taillight)) _taillight)
  (:beep
   (&optional __beep)
   (if __beep (setq _beep __beep)) _beep)
  (:serialization-length
   ()
   (+
    ;; uint8 _position_light
    1
    ;; uint8 _autopilot_light
    1
    ;; uint8 _beacon
    1
    ;; uint8 _headlight
    1
    ;; uint8 _taillight
    1
    ;; uint8 _beep
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _position_light
       (write-byte _position_light s)
     ;; uint8 _autopilot_light
       (write-byte _autopilot_light s)
     ;; uint8 _beacon
       (write-byte _beacon s)
     ;; uint8 _headlight
       (write-byte _headlight s)
     ;; uint8 _taillight
       (write-byte _taillight s)
     ;; uint8 _beep
       (write-byte _beep s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _position_light
     (setq _position_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _autopilot_light
     (setq _autopilot_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _beacon
     (setq _beacon (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _headlight
     (setq _headlight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _taillight
     (setq _taillight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _beep
     (setq _beep (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get grizzly_msgs::Ambience :md5sum-) "61f98d62162f451c695060a2c339b6b0")
(setf (get grizzly_msgs::Ambience :datatype-) "grizzly_msgs/Ambience")
(setf (get grizzly_msgs::Ambience :definition-)
      "uint8 PATTERN_ON=255
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

")



(provide :grizzly_msgs/Ambience "61f98d62162f451c695060a2c339b6b0")


