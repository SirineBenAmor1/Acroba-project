; Auto-generated. Do not edit!


(cl:in-package acroba_workshop_sigma-msg)


;//! \htmlinclude Move2Goal.msg.html

(cl:defclass <Move2Goal> (roslisp-msg-protocol:ros-message)
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
   (turtle_to_follow
    :reader turtle_to_follow
    :initarg :turtle_to_follow
    :type cl:string
    :initform "")
   (follow_distance
    :reader follow_distance
    :initarg :follow_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Move2Goal (<Move2Goal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Move2Goal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Move2Goal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acroba_workshop_sigma-msg:<Move2Goal> is deprecated: use acroba_workshop_sigma-msg:Move2Goal instead.")))

(cl:ensure-generic-function 'turtle_name-val :lambda-list '(m))
(cl:defmethod turtle_name-val ((m <Move2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:turtle_name-val is deprecated.  Use acroba_workshop_sigma-msg:turtle_name instead.")
  (turtle_name m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Move2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:speed-val is deprecated.  Use acroba_workshop_sigma-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'turtle_to_follow-val :lambda-list '(m))
(cl:defmethod turtle_to_follow-val ((m <Move2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:turtle_to_follow-val is deprecated.  Use acroba_workshop_sigma-msg:turtle_to_follow instead.")
  (turtle_to_follow m))

(cl:ensure-generic-function 'follow_distance-val :lambda-list '(m))
(cl:defmethod follow_distance-val ((m <Move2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:follow_distance-val is deprecated.  Use acroba_workshop_sigma-msg:follow_distance instead.")
  (follow_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Move2Goal>) ostream)
  "Serializes a message object of type '<Move2Goal>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turtle_to_follow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turtle_to_follow))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'follow_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Move2Goal>) istream)
  "Deserializes a message object of type '<Move2Goal>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turtle_to_follow) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'turtle_to_follow) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'follow_distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Move2Goal>)))
  "Returns string type for a message object of type '<Move2Goal>"
  "acroba_workshop_sigma/Move2Goal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Move2Goal)))
  "Returns string type for a message object of type 'Move2Goal"
  "acroba_workshop_sigma/Move2Goal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Move2Goal>)))
  "Returns md5sum for a message object of type '<Move2Goal>"
  "e4ce1b98da5af31f2ccce23c57ecbca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Move2Goal)))
  "Returns md5sum for a message object of type 'Move2Goal"
  "e4ce1b98da5af31f2ccce23c57ecbca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Move2Goal>)))
  "Returns full string definition for message of type '<Move2Goal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Define goal's message~%string turtle_name~%float32 speed~%string turtle_to_follow  ~%float32 follow_distance  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Move2Goal)))
  "Returns full string definition for message of type 'Move2Goal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#Define goal's message~%string turtle_name~%float32 speed~%string turtle_to_follow  ~%float32 follow_distance  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Move2Goal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'turtle_name))
     4
     4 (cl:length (cl:slot-value msg 'turtle_to_follow))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Move2Goal>))
  "Converts a ROS message object to a list"
  (cl:list 'Move2Goal
    (cl:cons ':turtle_name (turtle_name msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':turtle_to_follow (turtle_to_follow msg))
    (cl:cons ':follow_distance (follow_distance msg))
))
