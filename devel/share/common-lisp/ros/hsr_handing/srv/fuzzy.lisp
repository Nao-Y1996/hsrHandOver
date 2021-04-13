; Auto-generated. Do not edit!


(cl:in-package hsr_handing-srv)


;//! \htmlinclude fuzzy-request.msg.html

(cl:defclass <fuzzy-request> (roslisp-msg-protocol:ros-message)
  ((fy
    :reader fy
    :initarg :fy
    :type cl:float
    :initform 0.0)
   (fz
    :reader fz
    :initarg :fz
    :type cl:float
    :initform 0.0)
   (old_fy
    :reader old_fy
    :initarg :old_fy
    :type cl:float
    :initform 0.0)
   (old_fz
    :reader old_fz
    :initarg :old_fz
    :type cl:float
    :initform 0.0))
)

(cl:defclass fuzzy-request (<fuzzy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fuzzy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fuzzy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hsr_handing-srv:<fuzzy-request> is deprecated: use hsr_handing-srv:fuzzy-request instead.")))

(cl:ensure-generic-function 'fy-val :lambda-list '(m))
(cl:defmethod fy-val ((m <fuzzy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-srv:fy-val is deprecated.  Use hsr_handing-srv:fy instead.")
  (fy m))

(cl:ensure-generic-function 'fz-val :lambda-list '(m))
(cl:defmethod fz-val ((m <fuzzy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-srv:fz-val is deprecated.  Use hsr_handing-srv:fz instead.")
  (fz m))

(cl:ensure-generic-function 'old_fy-val :lambda-list '(m))
(cl:defmethod old_fy-val ((m <fuzzy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-srv:old_fy-val is deprecated.  Use hsr_handing-srv:old_fy instead.")
  (old_fy m))

(cl:ensure-generic-function 'old_fz-val :lambda-list '(m))
(cl:defmethod old_fz-val ((m <fuzzy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-srv:old_fz-val is deprecated.  Use hsr_handing-srv:old_fz instead.")
  (old_fz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fuzzy-request>) ostream)
  "Serializes a message object of type '<fuzzy-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'fz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'old_fy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'old_fz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fuzzy-request>) istream)
  "Deserializes a message object of type '<fuzzy-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'fz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'old_fy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'old_fz) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fuzzy-request>)))
  "Returns string type for a service object of type '<fuzzy-request>"
  "hsr_handing/fuzzyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fuzzy-request)))
  "Returns string type for a service object of type 'fuzzy-request"
  "hsr_handing/fuzzyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fuzzy-request>)))
  "Returns md5sum for a message object of type '<fuzzy-request>"
  "c8c38984a6ef7601852535eddb6b97ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fuzzy-request)))
  "Returns md5sum for a message object of type 'fuzzy-request"
  "c8c38984a6ef7601852535eddb6b97ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fuzzy-request>)))
  "Returns full string definition for message of type '<fuzzy-request>"
  (cl:format cl:nil "float64 fy~%float64 fz~%float64 old_fy~%float64 old_fz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fuzzy-request)))
  "Returns full string definition for message of type 'fuzzy-request"
  (cl:format cl:nil "float64 fy~%float64 fz~%float64 old_fy~%float64 old_fz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fuzzy-request>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fuzzy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'fuzzy-request
    (cl:cons ':fy (fy msg))
    (cl:cons ':fz (fz msg))
    (cl:cons ':old_fy (old_fy msg))
    (cl:cons ':old_fz (old_fz msg))
))
;//! \htmlinclude fuzzy-response.msg.html

(cl:defclass <fuzzy-response> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (ek
    :reader ek
    :initarg :ek
    :type cl:float
    :initform 0.0))
)

(cl:defclass fuzzy-response (<fuzzy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fuzzy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fuzzy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hsr_handing-srv:<fuzzy-response> is deprecated: use hsr_handing-srv:fuzzy-response instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <fuzzy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-srv:x-val is deprecated.  Use hsr_handing-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <fuzzy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-srv:y-val is deprecated.  Use hsr_handing-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'ek-val :lambda-list '(m))
(cl:defmethod ek-val ((m <fuzzy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hsr_handing-srv:ek-val is deprecated.  Use hsr_handing-srv:ek instead.")
  (ek m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fuzzy-response>) ostream)
  "Serializes a message object of type '<fuzzy-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ek))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fuzzy-response>) istream)
  "Deserializes a message object of type '<fuzzy-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ek) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fuzzy-response>)))
  "Returns string type for a service object of type '<fuzzy-response>"
  "hsr_handing/fuzzyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fuzzy-response)))
  "Returns string type for a service object of type 'fuzzy-response"
  "hsr_handing/fuzzyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fuzzy-response>)))
  "Returns md5sum for a message object of type '<fuzzy-response>"
  "c8c38984a6ef7601852535eddb6b97ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fuzzy-response)))
  "Returns md5sum for a message object of type 'fuzzy-response"
  "c8c38984a6ef7601852535eddb6b97ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fuzzy-response>)))
  "Returns full string definition for message of type '<fuzzy-response>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 ek~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fuzzy-response)))
  "Returns full string definition for message of type 'fuzzy-response"
  (cl:format cl:nil "float64 x~%float64 y~%float64 ek~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fuzzy-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fuzzy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'fuzzy-response
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':ek (ek msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'fuzzy)))
  'fuzzy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'fuzzy)))
  'fuzzy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fuzzy)))
  "Returns string type for a service object of type '<fuzzy>"
  "hsr_handing/fuzzy")