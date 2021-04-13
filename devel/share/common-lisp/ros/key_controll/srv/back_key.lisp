; Auto-generated. Do not edit!


(cl:in-package key_controll-srv)


;//! \htmlinclude back_key-request.msg.html

(cl:defclass <back_key-request> (roslisp-msg-protocol:ros-message)
  ((back_key
    :reader back_key
    :initarg :back_key
    :type cl:string
    :initform ""))
)

(cl:defclass back_key-request (<back_key-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <back_key-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'back_key-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name key_controll-srv:<back_key-request> is deprecated: use key_controll-srv:back_key-request instead.")))

(cl:ensure-generic-function 'back_key-val :lambda-list '(m))
(cl:defmethod back_key-val ((m <back_key-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader key_controll-srv:back_key-val is deprecated.  Use key_controll-srv:back_key instead.")
  (back_key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <back_key-request>) ostream)
  "Serializes a message object of type '<back_key-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'back_key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'back_key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <back_key-request>) istream)
  "Deserializes a message object of type '<back_key-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'back_key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<back_key-request>)))
  "Returns string type for a service object of type '<back_key-request>"
  "key_controll/back_keyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'back_key-request)))
  "Returns string type for a service object of type 'back_key-request"
  "key_controll/back_keyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<back_key-request>)))
  "Returns md5sum for a message object of type '<back_key-request>"
  "ec0067f1ae04091f857aa4aada8b0360")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'back_key-request)))
  "Returns md5sum for a message object of type 'back_key-request"
  "ec0067f1ae04091f857aa4aada8b0360")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<back_key-request>)))
  "Returns full string definition for message of type '<back_key-request>"
  (cl:format cl:nil "string  back_key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'back_key-request)))
  "Returns full string definition for message of type 'back_key-request"
  (cl:format cl:nil "string  back_key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <back_key-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'back_key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <back_key-request>))
  "Converts a ROS message object to a list"
  (cl:list 'back_key-request
    (cl:cons ':back_key (back_key msg))
))
;//! \htmlinclude back_key-response.msg.html

(cl:defclass <back_key-response> (roslisp-msg-protocol:ros-message)
  ((action_name
    :reader action_name
    :initarg :action_name
    :type cl:string
    :initform ""))
)

(cl:defclass back_key-response (<back_key-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <back_key-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'back_key-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name key_controll-srv:<back_key-response> is deprecated: use key_controll-srv:back_key-response instead.")))

(cl:ensure-generic-function 'action_name-val :lambda-list '(m))
(cl:defmethod action_name-val ((m <back_key-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader key_controll-srv:action_name-val is deprecated.  Use key_controll-srv:action_name instead.")
  (action_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <back_key-response>) ostream)
  "Serializes a message object of type '<back_key-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <back_key-response>) istream)
  "Deserializes a message object of type '<back_key-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<back_key-response>)))
  "Returns string type for a service object of type '<back_key-response>"
  "key_controll/back_keyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'back_key-response)))
  "Returns string type for a service object of type 'back_key-response"
  "key_controll/back_keyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<back_key-response>)))
  "Returns md5sum for a message object of type '<back_key-response>"
  "ec0067f1ae04091f857aa4aada8b0360")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'back_key-response)))
  "Returns md5sum for a message object of type 'back_key-response"
  "ec0067f1ae04091f857aa4aada8b0360")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<back_key-response>)))
  "Returns full string definition for message of type '<back_key-response>"
  (cl:format cl:nil "string action_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'back_key-response)))
  "Returns full string definition for message of type 'back_key-response"
  (cl:format cl:nil "string action_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <back_key-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <back_key-response>))
  "Converts a ROS message object to a list"
  (cl:list 'back_key-response
    (cl:cons ':action_name (action_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'back_key)))
  'back_key-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'back_key)))
  'back_key-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'back_key)))
  "Returns string type for a service object of type '<back_key>"
  "key_controll/back_key")