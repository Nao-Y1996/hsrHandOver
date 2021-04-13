; Auto-generated. Do not edit!


(cl:in-package key_controll-srv)


;//! \htmlinclude left_key-request.msg.html

(cl:defclass <left_key-request> (roslisp-msg-protocol:ros-message)
  ((left_key
    :reader left_key
    :initarg :left_key
    :type cl:string
    :initform ""))
)

(cl:defclass left_key-request (<left_key-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <left_key-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'left_key-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name key_controll-srv:<left_key-request> is deprecated: use key_controll-srv:left_key-request instead.")))

(cl:ensure-generic-function 'left_key-val :lambda-list '(m))
(cl:defmethod left_key-val ((m <left_key-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader key_controll-srv:left_key-val is deprecated.  Use key_controll-srv:left_key instead.")
  (left_key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <left_key-request>) ostream)
  "Serializes a message object of type '<left_key-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'left_key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'left_key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <left_key-request>) istream)
  "Deserializes a message object of type '<left_key-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'left_key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<left_key-request>)))
  "Returns string type for a service object of type '<left_key-request>"
  "key_controll/left_keyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'left_key-request)))
  "Returns string type for a service object of type 'left_key-request"
  "key_controll/left_keyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<left_key-request>)))
  "Returns md5sum for a message object of type '<left_key-request>"
  "92cc5915248733a71486eaf081ac9e84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'left_key-request)))
  "Returns md5sum for a message object of type 'left_key-request"
  "92cc5915248733a71486eaf081ac9e84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<left_key-request>)))
  "Returns full string definition for message of type '<left_key-request>"
  (cl:format cl:nil "string  left_key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'left_key-request)))
  "Returns full string definition for message of type 'left_key-request"
  (cl:format cl:nil "string  left_key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <left_key-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'left_key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <left_key-request>))
  "Converts a ROS message object to a list"
  (cl:list 'left_key-request
    (cl:cons ':left_key (left_key msg))
))
;//! \htmlinclude left_key-response.msg.html

(cl:defclass <left_key-response> (roslisp-msg-protocol:ros-message)
  ((action_name
    :reader action_name
    :initarg :action_name
    :type cl:string
    :initform ""))
)

(cl:defclass left_key-response (<left_key-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <left_key-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'left_key-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name key_controll-srv:<left_key-response> is deprecated: use key_controll-srv:left_key-response instead.")))

(cl:ensure-generic-function 'action_name-val :lambda-list '(m))
(cl:defmethod action_name-val ((m <left_key-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader key_controll-srv:action_name-val is deprecated.  Use key_controll-srv:action_name instead.")
  (action_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <left_key-response>) ostream)
  "Serializes a message object of type '<left_key-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <left_key-response>) istream)
  "Deserializes a message object of type '<left_key-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<left_key-response>)))
  "Returns string type for a service object of type '<left_key-response>"
  "key_controll/left_keyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'left_key-response)))
  "Returns string type for a service object of type 'left_key-response"
  "key_controll/left_keyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<left_key-response>)))
  "Returns md5sum for a message object of type '<left_key-response>"
  "92cc5915248733a71486eaf081ac9e84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'left_key-response)))
  "Returns md5sum for a message object of type 'left_key-response"
  "92cc5915248733a71486eaf081ac9e84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<left_key-response>)))
  "Returns full string definition for message of type '<left_key-response>"
  (cl:format cl:nil "string action_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'left_key-response)))
  "Returns full string definition for message of type 'left_key-response"
  (cl:format cl:nil "string action_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <left_key-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <left_key-response>))
  "Converts a ROS message object to a list"
  (cl:list 'left_key-response
    (cl:cons ':action_name (action_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'left_key)))
  'left_key-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'left_key)))
  'left_key-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'left_key)))
  "Returns string type for a service object of type '<left_key>"
  "key_controll/left_key")