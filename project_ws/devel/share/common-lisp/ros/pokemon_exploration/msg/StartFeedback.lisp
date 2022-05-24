; Auto-generated. Do not edit!


(cl:in-package pokemon_exploration-msg)


;//! \htmlinclude StartFeedback.msg.html

(cl:defclass <StartFeedback> (roslisp-msg-protocol:ros-message)
  ((current_distance
    :reader current_distance
    :initarg :current_distance
    :type cl:float
    :initform 0.0)
   (current_error
    :reader current_error
    :initarg :current_error
    :type cl:float
    :initform 0.0))
)

(cl:defclass StartFeedback (<StartFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pokemon_exploration-msg:<StartFeedback> is deprecated: use pokemon_exploration-msg:StartFeedback instead.")))

(cl:ensure-generic-function 'current_distance-val :lambda-list '(m))
(cl:defmethod current_distance-val ((m <StartFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pokemon_exploration-msg:current_distance-val is deprecated.  Use pokemon_exploration-msg:current_distance instead.")
  (current_distance m))

(cl:ensure-generic-function 'current_error-val :lambda-list '(m))
(cl:defmethod current_error-val ((m <StartFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pokemon_exploration-msg:current_error-val is deprecated.  Use pokemon_exploration-msg:current_error instead.")
  (current_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartFeedback>) ostream)
  "Serializes a message object of type '<StartFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartFeedback>) istream)
  "Deserializes a message object of type '<StartFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_error) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartFeedback>)))
  "Returns string type for a message object of type '<StartFeedback>"
  "pokemon_exploration/StartFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartFeedback)))
  "Returns string type for a message object of type 'StartFeedback"
  "pokemon_exploration/StartFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartFeedback>)))
  "Returns md5sum for a message object of type '<StartFeedback>"
  "2a6c461fcb85ef1623333aa310560289")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartFeedback)))
  "Returns md5sum for a message object of type 'StartFeedback"
  "2a6c461fcb85ef1623333aa310560289")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartFeedback>)))
  "Returns full string definition for message of type '<StartFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float64 current_distance~%float64 current_error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartFeedback)))
  "Returns full string definition for message of type 'StartFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%float64 current_distance~%float64 current_error~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartFeedback>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'StartFeedback
    (cl:cons ':current_distance (current_distance msg))
    (cl:cons ':current_error (current_error msg))
))
