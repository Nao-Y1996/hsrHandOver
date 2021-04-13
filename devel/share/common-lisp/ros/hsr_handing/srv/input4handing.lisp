; Auto-generated. Do not edit!


(cl:in-package hsr_handing-srv)


;//! \htmlinclude input4handing-request.msg.html

(cl:defclass <input4handing-request> (roslisp-msg-protocol:ros-message)
  ((input_key
    :reader input_key
    :initarg :input_key
    :type cl:string
    :initform ""))
)

(cl:defclass input4handing-request (<input4handing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <input4handing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'input4handing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hsr_handing-srv:<input4handing-request> is deprecated: use hsr_handing-srv:input4handing-request instead.")))

(cl:ensure-generic-function 'input_key-val :lambda-list '(m))
(cl:defmethod input_key-val ((m <input4handing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-srv:input_key-val is deprecated.  Use hsr_handing-srv:input_key instead.")
  (input_key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <input4handing-request>) ostream)
  "Serializes a message object of type '<input4handing-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input_key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input_key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <input4handing-request>) istream)
  "Deserializes a message object of type '<input4handing-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input_key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<input4handing-request>)))
  "Returns string type for a service object of type '<input4handing-request>"
  "hsr_handing/input4handingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'input4handing-request)))
  "Returns string type for a service object of type 'input4handing-request"
  "hsr_handing/input4handingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<input4handing-request>)))
  "Returns md5sum for a message object of type '<input4handing-request>"
  "7fe954f65abd774fd7fd0cc14c5c3b00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'input4handing-request)))
  "Returns md5sum for a message object of type 'input4handing-request"
  "7fe954f65abd774fd7fd0cc14c5c3b00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<input4handing-request>)))
  "Returns full string definition for message of type '<input4handing-request>"
  (cl:format cl:nil "string  input_key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'input4handing-request)))
  "Returns full string definition for message of type 'input4handing-request"
  (cl:format cl:nil "string  input_key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <input4handing-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input_key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <input4handing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'input4handing-request
    (cl:cons ':input_key (input_key msg))
))
;//! \htmlinclude input4handing-response.msg.html

(cl:defclass <input4handing-response> (roslisp-msg-protocol:ros-message)
  ((action_name
    :reader action_name
    :initarg :action_name
    :type cl:string
    :initform ""))
)

(cl:defclass input4handing-response (<input4handing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <input4handing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'input4handing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hsr_handing-srv:<input4handing-response> is deprecated: use hsr_handing-srv:input4handing-response instead.")))

(cl:ensure-generic-function 'action_name-val :lambda-list '(m))
(cl:defmethod action_name-val ((m <input4handing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-srv:action_name-val is deprecated.  Use hsr_handing-srv:action_name instead.")
  (action_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <input4handing-response>) ostream)
  "Serializes a message object of type '<input4handing-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <input4handing-response>) istream)
  "Deserializes a message object of type '<input4handing-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<input4handing-response>)))
  "Returns string type for a service object of type '<input4handing-response>"
  "hsr_handing/input4handingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'input4handing-response)))
  "Returns string type for a service object of type 'input4handing-response"
  "hsr_handing/input4handingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<input4handing-response>)))
  "Returns md5sum for a message object of type '<input4handing-response>"
  "7fe954f65abd774fd7fd0cc14c5c3b00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'input4handing-response)))
  "Returns md5sum for a message object of type 'input4handing-response"
  "7fe954f65abd774fd7fd0cc14c5c3b00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<input4handing-response>)))
  "Returns full string definition for message of type '<input4handing-response>"
  (cl:format cl:nil "string action_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'input4handing-response)))
  "Returns full string definition for message of type 'input4handing-response"
  (cl:format cl:nil "string action_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <input4handing-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <input4handing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'input4handing-response
    (cl:cons ':action_name (action_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'input4handing)))
  'input4handing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'input4handing)))
  'input4handing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'input4handing)))
  "Returns string type for a service object of type '<input4handing>"
  "hsr_handing/input4handing")