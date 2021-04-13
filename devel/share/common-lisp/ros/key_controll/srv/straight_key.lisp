; Auto-generated. Do not edit!


(cl:in-package key_controll-srv)


;//! \htmlinclude straight_key-request.msg.html

(cl:defclass <straight_key-request> (roslisp-msg-protocol:ros-message)
  ((straight_key
    :reader straight_key
    :initarg :straight_key
    :type cl:string
    :initform ""))
)

(cl:defclass straight_key-request (<straight_key-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <straight_key-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'straight_key-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name key_controll-srv:<straight_key-request> is deprecated: use key_controll-srv:straight_key-request instead.")))

(cl:ensure-generic-function 'straight_key-val :lambda-list '(m))
(cl:defmethod straight_key-val ((m <straight_key-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader key_controll-srv:straight_key-val is deprecated.  Use key_controll-srv:straight_key instead.")
  (straight_key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <straight_key-request>) ostream)
  "Serializes a message object of type '<straight_key-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'straight_key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'straight_key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <straight_key-request>) istream)
  "Deserializes a message object of type '<straight_key-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'straight_key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'straight_key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<straight_key-request>)))
  "Returns string type for a service object of type '<straight_key-request>"
  "key_controll/straight_keyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'straight_key-request)))
  "Returns string type for a service object of type 'straight_key-request"
  "key_controll/straight_keyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<straight_key-request>)))
  "Returns md5sum for a message object of type '<straight_key-request>"
  "cbd8e12ce029666dd69311e278e5a145")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'straight_key-request)))
  "Returns md5sum for a message object of type 'straight_key-request"
  "cbd8e12ce029666dd69311e278e5a145")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<straight_key-request>)))
  "Returns full string definition for message of type '<straight_key-request>"
  (cl:format cl:nil "string  straight_key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'straight_key-request)))
  "Returns full string definition for message of type 'straight_key-request"
  (cl:format cl:nil "string  straight_key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <straight_key-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'straight_key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <straight_key-request>))
  "Converts a ROS message object to a list"
  (cl:list 'straight_key-request
    (cl:cons ':straight_key (straight_key msg))
))
;//! \htmlinclude straight_key-response.msg.html

(cl:defclass <straight_key-response> (roslisp-msg-protocol:ros-message)
  ((action_name
    :reader action_name
    :initarg :action_name
    :type cl:string
    :initform ""))
)

(cl:defclass straight_key-response (<straight_key-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <straight_key-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'straight_key-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name key_controll-srv:<straight_key-response> is deprecated: use key_controll-srv:straight_key-response instead.")))

(cl:ensure-generic-function 'action_name-val :lambda-list '(m))
(cl:defmethod action_name-val ((m <straight_key-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader key_controll-srv:action_name-val is deprecated.  Use key_controll-srv:action_name instead.")
  (action_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <straight_key-response>) ostream)
  "Serializes a message object of type '<straight_key-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <straight_key-response>) istream)
  "Deserializes a message object of type '<straight_key-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<straight_key-response>)))
  "Returns string type for a service object of type '<straight_key-response>"
  "key_controll/straight_keyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'straight_key-response)))
  "Returns string type for a service object of type 'straight_key-response"
  "key_controll/straight_keyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<straight_key-response>)))
  "Returns md5sum for a message object of type '<straight_key-response>"
  "cbd8e12ce029666dd69311e278e5a145")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'straight_key-response)))
  "Returns md5sum for a message object of type 'straight_key-response"
  "cbd8e12ce029666dd69311e278e5a145")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<straight_key-response>)))
  "Returns full string definition for message of type '<straight_key-response>"
  (cl:format cl:nil "string action_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'straight_key-response)))
  "Returns full string definition for message of type 'straight_key-response"
  (cl:format cl:nil "string action_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <straight_key-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <straight_key-response>))
  "Converts a ROS message object to a list"
  (cl:list 'straight_key-response
    (cl:cons ':action_name (action_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'straight_key)))
  'straight_key-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'straight_key)))
  'straight_key-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'straight_key)))
  "Returns string type for a service object of type '<straight_key>"
  "key_controll/straight_key")