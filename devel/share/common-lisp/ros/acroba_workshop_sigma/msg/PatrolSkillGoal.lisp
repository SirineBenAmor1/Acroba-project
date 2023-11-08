; Auto-generated. Do not edit!


(cl:in-package acroba_workshop_sigma-msg)


;//! \htmlinclude PatrolSkillGoal.msg.html

(cl:defclass <PatrolSkillGoal> (roslisp-msg-protocol:ros-message)
  ((turtle_name
    :reader turtle_name
    :initarg :turtle_name
    :type cl:string
    :initform "")
   (move_distance
    :reader move_distance
    :initarg :move_distance
    :type cl:float
    :initform 0.0)
   (move_speed
    :reader move_speed
    :initarg :move_speed
    :type cl:float
    :initform 0.0)
   (rotate_angle
    :reader rotate_angle
    :initarg :rotate_angle
    :type cl:float
    :initform 0.0)
   (repetitions
    :reader repetitions
    :initarg :repetitions
    :type cl:integer
    :initform 0))
)

(cl:defclass PatrolSkillGoal (<PatrolSkillGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrolSkillGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrolSkillGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acroba_workshop_sigma-msg:<PatrolSkillGoal> is deprecated: use acroba_workshop_sigma-msg:PatrolSkillGoal instead.")))

(cl:ensure-generic-function 'turtle_name-val :lambda-list '(m))
(cl:defmethod turtle_name-val ((m <PatrolSkillGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:turtle_name-val is deprecated.  Use acroba_workshop_sigma-msg:turtle_name instead.")
  (turtle_name m))

(cl:ensure-generic-function 'move_distance-val :lambda-list '(m))
(cl:defmethod move_distance-val ((m <PatrolSkillGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:move_distance-val is deprecated.  Use acroba_workshop_sigma-msg:move_distance instead.")
  (move_distance m))

(cl:ensure-generic-function 'move_speed-val :lambda-list '(m))
(cl:defmethod move_speed-val ((m <PatrolSkillGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:move_speed-val is deprecated.  Use acroba_workshop_sigma-msg:move_speed instead.")
  (move_speed m))

(cl:ensure-generic-function 'rotate_angle-val :lambda-list '(m))
(cl:defmethod rotate_angle-val ((m <PatrolSkillGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:rotate_angle-val is deprecated.  Use acroba_workshop_sigma-msg:rotate_angle instead.")
  (rotate_angle m))

(cl:ensure-generic-function 'repetitions-val :lambda-list '(m))
(cl:defmethod repetitions-val ((m <PatrolSkillGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:repetitions-val is deprecated.  Use acroba_workshop_sigma-msg:repetitions instead.")
  (repetitions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrolSkillGoal>) ostream)
  "Serializes a message object of type '<PatrolSkillGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turtle_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turtle_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'move_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'move_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rotate_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'repetitions)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrolSkillGoal>) istream)
  "Deserializes a message object of type '<PatrolSkillGoal>"
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
    (cl:setf (cl:slot-value msg 'move_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'move_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotate_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'repetitions) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PatrolSkillGoal>)))
  "Returns string type for a message object of type '<PatrolSkillGoal>"
  "acroba_workshop_sigma/PatrolSkillGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PatrolSkillGoal)))
  "Returns string type for a message object of type 'PatrolSkillGoal"
  "acroba_workshop_sigma/PatrolSkillGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PatrolSkillGoal>)))
  "Returns md5sum for a message object of type '<PatrolSkillGoal>"
  "37fdf250aaf07f6708f88a411892b899")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrolSkillGoal)))
  "Returns md5sum for a message object of type 'PatrolSkillGoal"
  "37fdf250aaf07f6708f88a411892b899")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrolSkillGoal>)))
  "Returns full string definition for message of type '<PatrolSkillGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# The action goal for creating a rectangle~%string turtle_name~%float32 move_distance~%float32 move_speed~%float32 rotate_angle~%int32 repetitions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrolSkillGoal)))
  "Returns full string definition for message of type 'PatrolSkillGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# The action goal for creating a rectangle~%string turtle_name~%float32 move_distance~%float32 move_speed~%float32 rotate_angle~%int32 repetitions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrolSkillGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'turtle_name))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrolSkillGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrolSkillGoal
    (cl:cons ':turtle_name (turtle_name msg))
    (cl:cons ':move_distance (move_distance msg))
    (cl:cons ':move_speed (move_speed msg))
    (cl:cons ':rotate_angle (rotate_angle msg))
    (cl:cons ':repetitions (repetitions msg))
))
