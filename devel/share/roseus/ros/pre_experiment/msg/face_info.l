;; Auto-generated. Do not edit!


(when (boundp 'pre_experiment::face_info)
  (if (not (find-package "PRE_EXPERIMENT"))
    (make-package "PRE_EXPERIMENT"))
  (shadow 'face_info (find-package "PRE_EXPERIMENT")))
(unless (find-package "PRE_EXPERIMENT::FACE_INFO")
  (make-package "PRE_EXPERIMENT::FACE_INFO"))

(in-package "ROS")
;;//! \htmlinclude face_info.msg.html


(defclass pre_experiment::face_info
  :super ros::object
  :slots (_face_depth _center_depth _face_x _face_y _time ))

(defmethod pre_experiment::face_info
  (:init
   (&key
    ((:face_depth __face_depth) 0.0)
    ((:center_depth __center_depth) 0.0)
    ((:face_x __face_x) 0.0)
    ((:face_y __face_y) 0.0)
    ((:time __time) 0.0)
    )
   (send-super :init)
   (setq _face_depth (float __face_depth))
   (setq _center_depth (float __center_depth))
   (setq _face_x (float __face_x))
   (setq _face_y (float __face_y))
   (setq _time (float __time))
   self)
  (:face_depth
   (&optional __face_depth)
   (if __face_depth (setq _face_depth __face_depth)) _face_depth)
  (:center_depth
   (&optional __center_depth)
   (if __center_depth (setq _center_depth __center_depth)) _center_depth)
  (:face_x
   (&optional __face_x)
   (if __face_x (setq _face_x __face_x)) _face_x)
  (:face_y
   (&optional __face_y)
   (if __face_y (setq _face_y __face_y)) _face_y)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; float32 _face_depth
    4
    ;; float32 _center_depth
    4
    ;; float32 _face_x
    4
    ;; float32 _face_y
    4
    ;; float32 _time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _face_depth
       (sys::poke _face_depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _center_depth
       (sys::poke _center_depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _face_x
       (sys::poke _face_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _face_y
       (sys::poke _face_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _face_depth
     (setq _face_depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _center_depth
     (setq _center_depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _face_x
     (setq _face_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _face_y
     (setq _face_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pre_experiment::face_info :md5sum-) "4cb0496d5db40586ebe568131f126a11")
(setf (get pre_experiment::face_info :datatype-) "pre_experiment/face_info")
(setf (get pre_experiment::face_info :definition-)
      "float32 face_depth
float32 center_depth
float32 face_x
float32 face_y
float32 time

")



(provide :pre_experiment/face_info "4cb0496d5db40586ebe568131f126a11")


