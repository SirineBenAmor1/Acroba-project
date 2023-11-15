; Auto-generated. Do not edit!


(cl:in-package acroba_workshop_sigma-msg)


;//! \htmlinclude FollowGoal.msg.html

(cl:defclass <FollowGoal> (roslisp-msg-protocol:ros-message)
  ((turtle_name
    :reader turtle_name
    :initarg :turtle_name
    :type cl:string
    :initform "")
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (isForward
    :reader isForward
    :initarg :isForward
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FollowGoal (<FollowGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acroba_workshop_sigma-msg:<FollowGoal> is deprecated: use acroba_workshop_sigma-msg:FollowGoal instead.")))

(cl:ensure-generic-function 'turtle_name-val :lambda-list '(m))
(cl:defmethod turtle_name-val ((m <FollowGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:turtle_name-val is deprecated.  Use acroba_workshop_sigma-msg:turtle_name instead.")
  (turtle_name m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <FollowGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:speed-val is deprecated.  Use acroba_workshop_sigma-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <FollowGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:distance-val is deprecated.  Use acroba_workshop_sigma-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <FollowGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:angle-val is deprecated.  Use acroba_workshop_sigma-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'isForward-val :lambda-list '(m))
(cl:defmethod isForward-val ((m <FollowGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:isForward-val is deprecated.  Use acroba_workshop_sigma-msg:isForward instead.")
  (isForward m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowGoal>) ostream)
  "Serializes a message object of type '<FollowGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turtle_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turtle_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isForward) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowGoal>) istream)
  "Deserializes a message object of type '<FollowGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turtle_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'turtle_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isForward) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowGoal>)))
  "Returns string type for a message object of type '<FollowGoal>"
  "acroba_workshop_sigma/FollowGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowGoal)))
  "Returns string type for a message object of type 'FollowGoal"
  "acroba_workshop_sigma/FollowGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowGoal>)))
  "Returns md5sum for a message object of type '<FollowGoal>"
  "5063b95f0bacef3cca474f3440a82c74")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowGoal)))
  "Returns md5sum for a message object of type 'FollowGoal"
  "5063b95f0bacef3cca474f3440a82c74")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowGoal>)))
  "Returns full string definition for message of type '<FollowGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Define goal's message~%string turtle_name~%float32 speed~%float32 distance~%float32 angle~%bool isForward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowGoal)))
  "Returns full string definition for message of type 'FollowGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Define goal's message~%string turtle_name~%float32 speed~%float32 distance~%float32 angle~%bool isForward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'turtle_name))
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowGoal
    (cl:cons ':turtle_name (turtle_name msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':isForward (isForward msg))
))
