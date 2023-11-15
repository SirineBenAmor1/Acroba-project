; Auto-generated. Do not edit!


(cl:in-package acroba_workshop_sigma-msg)


;//! \htmlinclude PatrolGoal.msg.html

(cl:defclass <PatrolGoal> (roslisp-msg-protocol:ros-message)
  ((turtle_name
    :reader turtle_name
    :initarg :turtle_name
    :type cl:string
    :initform "")
   (speed_move
    :reader speed_move
    :initarg :speed_move
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (isForward
    :reader isForward
    :initarg :isForward
    :type cl:boolean
    :initform cl:nil)
   (speed_rotate
    :reader speed_rotate
    :initarg :speed_rotate
    :type cl:float
    :initform 0.0)
   (degrees
    :reader degrees
    :initarg :degrees
    :type cl:float
    :initform 0.0)
   (isClockwise
    :reader isClockwise
    :initarg :isClockwise
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PatrolGoal (<PatrolGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PatrolGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PatrolGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acroba_workshop_sigma-msg:<PatrolGoal> is deprecated: use acroba_workshop_sigma-msg:PatrolGoal instead.")))

(cl:ensure-generic-function 'turtle_name-val :lambda-list '(m))
(cl:defmethod turtle_name-val ((m <PatrolGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:turtle_name-val is deprecated.  Use acroba_workshop_sigma-msg:turtle_name instead.")
  (turtle_name m))

(cl:ensure-generic-function 'speed_move-val :lambda-list '(m))
(cl:defmethod speed_move-val ((m <PatrolGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:speed_move-val is deprecated.  Use acroba_workshop_sigma-msg:speed_move instead.")
  (speed_move m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <PatrolGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:distance-val is deprecated.  Use acroba_workshop_sigma-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'isForward-val :lambda-list '(m))
(cl:defmethod isForward-val ((m <PatrolGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:isForward-val is deprecated.  Use acroba_workshop_sigma-msg:isForward instead.")
  (isForward m))

(cl:ensure-generic-function 'speed_rotate-val :lambda-list '(m))
(cl:defmethod speed_rotate-val ((m <PatrolGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:speed_rotate-val is deprecated.  Use acroba_workshop_sigma-msg:speed_rotate instead.")
  (speed_rotate m))

(cl:ensure-generic-function 'degrees-val :lambda-list '(m))
(cl:defmethod degrees-val ((m <PatrolGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:degrees-val is deprecated.  Use acroba_workshop_sigma-msg:degrees instead.")
  (degrees m))

(cl:ensure-generic-function 'isClockwise-val :lambda-list '(m))
(cl:defmethod isClockwise-val ((m <PatrolGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acroba_workshop_sigma-msg:isClockwise-val is deprecated.  Use acroba_workshop_sigma-msg:isClockwise instead.")
  (isClockwise m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PatrolGoal>) ostream)
  "Serializes a message object of type '<PatrolGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'turtle_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'turtle_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_move))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isForward) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_rotate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'degrees))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isClockwise) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PatrolGoal>) istream)
  "Deserializes a message object of type '<PatrolGoal>"
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
    (cl:setf (cl:slot-value msg 'speed_move) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isForward) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_rotate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'degrees) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isClockwise) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PatrolGoal>)))
  "Returns string type for a message object of type '<PatrolGoal>"
  "acroba_workshop_sigma/PatrolGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PatrolGoal)))
  "Returns string type for a message object of type 'PatrolGoal"
  "acroba_workshop_sigma/PatrolGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PatrolGoal>)))
  "Returns md5sum for a message object of type '<PatrolGoal>"
  "28f8b262499b05e0030c6536920d8221")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PatrolGoal)))
  "Returns md5sum for a message object of type 'PatrolGoal"
  "28f8b262499b05e0030c6536920d8221")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PatrolGoal>)))
  "Returns full string definition for message of type '<PatrolGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define goal's message~%string turtle_name~%float32 speed_move~%float32 distance~%bool isForward~%float32 speed_rotate~%float32 degrees~%bool isClockwise~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PatrolGoal)))
  "Returns full string definition for message of type 'PatrolGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define goal's message~%string turtle_name~%float32 speed_move~%float32 distance~%bool isForward~%float32 speed_rotate~%float32 degrees~%bool isClockwise~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PatrolGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'turtle_name))
     4
     4
     1
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PatrolGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PatrolGoal
    (cl:cons ':turtle_name (turtle_name msg))
    (cl:cons ':speed_move (speed_move msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':isForward (isForward msg))
    (cl:cons ':speed_rotate (speed_rotate msg))
    (cl:cons ':degrees (degrees msg))
    (cl:cons ':isClockwise (isClockwise msg))
))
