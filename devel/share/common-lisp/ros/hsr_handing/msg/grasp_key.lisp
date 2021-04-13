; Auto-generated. Do not edit!


(cl:in-package hsr_handing-msg)


;//! \htmlinclude grasp_key.msg.html

(cl:defclass <grasp_key> (roslisp-msg-protocol:ros-message)
  ((grasp_key
    :reader grasp_key
    :initarg :grasp_key
    :type cl:string
    :initform ""))
)

(cl:defclass grasp_key (<grasp_key>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <grasp_key>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'grasp_key)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hsr_handing-msg:<grasp_key> is deprecated: use hsr_handing-msg:grasp_key instead.")))

(cl:ensure-generic-function 'grasp_key-val :lambda-list '(m))
(cl:defmethod grasp_key-val ((m <grasp_key>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-msg:grasp_key-val is deprecated.  Use hsr_handing-msg:grasp_key instead.")
  (grasp_key m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <grasp_key>) ostream)
  "Serializes a message object of type '<grasp_key>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'grasp_key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'grasp_key))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <grasp_key>) istream)
  "Deserializes a message object of type '<grasp_key>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'grasp_key) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'grasp_key) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<grasp_key>)))
  "Returns string type for a message object of type '<grasp_key>"
  "hsr_handing/grasp_key")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'grasp_key)))
  "Returns string type for a message object of type 'grasp_key"
  "hsr_handing/grasp_key")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<grasp_key>)))
  "Returns md5sum for a message object of type '<grasp_key>"
  "3833578282f3854b4d750588d5638a4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'grasp_key)))
  "Returns md5sum for a message object of type 'grasp_key"
  "3833578282f3854b4d750588d5638a4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<grasp_key>)))
  "Returns full string definition for message of type '<grasp_key>"
  (cl:format cl:nil "string grasp_key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'grasp_key)))
  "Returns full string definition for message of type 'grasp_key"
  (cl:format cl:nil "string grasp_key~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <grasp_key>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'grasp_key))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <grasp_key>))
  "Converts a ROS message object to a list"
  (cl:list 'grasp_key
    (cl:cons ':grasp_key (grasp_key msg))
))
