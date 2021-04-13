; Auto-generated. Do not edit!


(cl:in-package hsr_handing-msg)


;//! \htmlinclude pose_info.msg.html

(cl:defclass <pose_info> (roslisp-msg-protocol:ros-message)
  ((pose_identification_number
    :reader pose_identification_number
    :initarg :pose_identification_number
    :type cl:float
    :initform 0.0))
)

(cl:defclass pose_info (<pose_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hsr_handing-msg:<pose_info> is deprecated: use hsr_handing-msg:pose_info instead.")))

(cl:ensure-generic-function 'pose_identification_number-val :lambda-list '(m))
(cl:defmethod pose_identification_number-val ((m <pose_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-msg:pose_identification_number-val is deprecated.  Use hsr_handing-msg:pose_identification_number instead.")
  (pose_identification_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose_info>) ostream)
  "Serializes a message object of type '<pose_info>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pose_identification_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose_info>) istream)
  "Deserializes a message object of type '<pose_info>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pose_identification_number) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose_info>)))
  "Returns string type for a message object of type '<pose_info>"
  "hsr_handing/pose_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose_info)))
  "Returns string type for a message object of type 'pose_info"
  "hsr_handing/pose_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose_info>)))
  "Returns md5sum for a message object of type '<pose_info>"
  "d2665a7040cc32206ef659f15e9d544d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose_info)))
  "Returns md5sum for a message object of type 'pose_info"
  "d2665a7040cc32206ef659f15e9d544d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose_info>)))
  "Returns full string definition for message of type '<pose_info>"
  (cl:format cl:nil "float32 pose_identification_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose_info)))
  "Returns full string definition for message of type 'pose_info"
  (cl:format cl:nil "float32 pose_identification_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose_info>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose_info>))
  "Converts a ROS message object to a list"
  (cl:list 'pose_info
    (cl:cons ':pose_identification_number (pose_identification_number msg))
))
