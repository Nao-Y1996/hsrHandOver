; Auto-generated. Do not edit!


(cl:in-package pre_experiment-msg)


;//! \htmlinclude face_info.msg.html

(cl:defclass <face_info> (roslisp-msg-protocol:ros-message)
  ((face_depth
    :reader face_depth
    :initarg :face_depth
    :type cl:float
    :initform 0.0)
   (center_depth
    :reader center_depth
    :initarg :center_depth
    :type cl:float
    :initform 0.0)
   (face_x
    :reader face_x
    :initarg :face_x
    :type cl:float
    :initform 0.0)
   (face_y
    :reader face_y
    :initarg :face_y
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass face_info (<face_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <face_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'face_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pre_experiment-msg:<face_info> is deprecated: use pre_experiment-msg:face_info instead.")))

(cl:ensure-generic-function 'face_depth-val :lambda-list '(m))
(cl:defmethod face_depth-val ((m <face_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pre_experiment-msg:face_depth-val is deprecated.  Use pre_experiment-msg:face_depth instead.")
  (face_depth m))

(cl:ensure-generic-function 'center_depth-val :lambda-list '(m))
(cl:defmethod center_depth-val ((m <face_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pre_experiment-msg:center_depth-val is deprecated.  Use pre_experiment-msg:center_depth instead.")
  (center_depth m))

(cl:ensure-generic-function 'face_x-val :lambda-list '(m))
(cl:defmethod face_x-val ((m <face_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pre_experiment-msg:face_x-val is deprecated.  Use pre_experiment-msg:face_x instead.")
  (face_x m))

(cl:ensure-generic-function 'face_y-val :lambda-list '(m))
(cl:defmethod face_y-val ((m <face_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pre_experiment-msg:face_y-val is deprecated.  Use pre_experiment-msg:face_y instead.")
  (face_y m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <face_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pre_experiment-msg:time-val is deprecated.  Use pre_experiment-msg:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <face_info>) ostream)
  "Serializes a message object of type '<face_info>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'face_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'center_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'face_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'face_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <face_info>) istream)
  "Deserializes a message object of type '<face_info>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'face_depth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'center_depth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'face_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'face_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<face_info>)))
  "Returns string type for a message object of type '<face_info>"
  "pre_experiment/face_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'face_info)))
  "Returns string type for a message object of type 'face_info"
  "pre_experiment/face_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<face_info>)))
  "Returns md5sum for a message object of type '<face_info>"
  "4cb0496d5db40586ebe568131f126a11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'face_info)))
  "Returns md5sum for a message object of type 'face_info"
  "4cb0496d5db40586ebe568131f126a11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<face_info>)))
  "Returns full string definition for message of type '<face_info>"
  (cl:format cl:nil "float32 face_depth~%float32 center_depth~%float32 face_x~%float32 face_y~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'face_info)))
  "Returns full string definition for message of type 'face_info"
  (cl:format cl:nil "float32 face_depth~%float32 center_depth~%float32 face_x~%float32 face_y~%float32 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <face_info>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <face_info>))
  "Converts a ROS message object to a list"
  (cl:list 'face_info
    (cl:cons ':face_depth (face_depth msg))
    (cl:cons ':center_depth (center_depth msg))
    (cl:cons ':face_x (face_x msg))
    (cl:cons ':face_y (face_y msg))
    (cl:cons ':time (time msg))
))
