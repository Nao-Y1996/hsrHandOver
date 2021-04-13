; Auto-generated. Do not edit!


(cl:in-package key_controll-msg)


;//! \htmlinclude key.msg.html

(cl:defclass <key> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:string
    :initform ""))
)

(cl:defclass key (<key>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <key>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'key)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name key_controll-msg:<key> is deprecated: use key_controll-msg:key instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <key>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader key_controll-msg:key-val is deprecated.  Use key_controll-msg:key instead.")
  (key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <key>) ostream)
  "Serializes a message object of type '<key>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <key>) istream)
  "Deserializes a message object of type '<key>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<key>)))
  "Returns string type for a message object of type '<key>"
  "key_controll/key")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'key)))
  "Returns string type for a message object of type 'key"
  "key_controll/key")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<key>)))
  "Returns md5sum for a message object of type '<key>"
  "e0e6b82860d1fefbdaa2c52c0b6f712e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'key)))
  "Returns md5sum for a message object of type 'key"
  "e0e6b82860d1fefbdaa2c52c0b6f712e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<key>)))
  "Returns full string definition for message of type '<key>"
  (cl:format cl:nil "string key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'key)))
  "Returns full string definition for message of type 'key"
  (cl:format cl:nil "string key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <key>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <key>))
  "Converts a ROS message object to a list"
  (cl:list 'key
    (cl:cons ':key (key msg))
))
