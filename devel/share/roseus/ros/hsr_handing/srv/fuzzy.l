;; Auto-generated. Do not edit!


(when (boundp 'hsr_handing::fuzzy)
  (if (not (find-package "HSR_HANDING"))
    (make-package "HSR_HANDING"))
  (shadow 'fuzzy (find-package "HSR_HANDING")))
(unless (find-package "HSR_HANDING::FUZZY")
  (make-package "HSR_HANDING::FUZZY"))
(unless (find-package "HSR_HANDING::FUZZYREQUEST")
  (make-package "HSR_HANDING::FUZZYREQUEST"))
(unless (find-package "HSR_HANDING::FUZZYRESPONSE")
  (make-package "HSR_HANDING::FUZZYRESPONSE"))

(in-package "ROS")





(defclass hsr_handing::fuzzyRequest
  :super ros::object
  :slots (_fy _fz _old_fy _old_fz ))

(defmethod hsr_handing::fuzzyRequest
  (:init
   (&key
    ((:fy __fy) 0.0)
    ((:fz __fz) 0.0)
    ((:old_fy __old_fy) 0.0)
    ((:old_fz __old_fz) 0.0)
    )
   (send-super :init)
   (setq _fy (float __fy))
   (setq _fz (float __fz))
   (setq _old_fy (float __old_fy))
   (setq _old_fz (float __old_fz))
   self)
  (:fy
   (&optional __fy)
   (if __fy (setq _fy __fy)) _fy)
  (:fz
   (&optional __fz)
   (if __fz (setq _fz __fz)) _fz)
  (:old_fy
   (&optional __old_fy)
   (if __old_fy (setq _old_fy __old_fy)) _old_fy)
  (:old_fz
   (&optional __old_fz)
   (if __old_fz (setq _old_fz __old_fz)) _old_fz)
  (:serialization-length
   ()
   (+
    ;; float64 _fy
    8
    ;; float64 _fz
    8
    ;; float64 _old_fy
    8
    ;; float64 _old_fz
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _fy
       (sys::poke _fy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _fz
       (sys::poke _fz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _old_fy
       (sys::poke _old_fy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _old_fz
       (sys::poke _old_fz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _fy
     (setq _fy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _fz
     (setq _fz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _old_fy
     (setq _old_fy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _old_fz
     (setq _old_fz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hsr_handing::fuzzyResponse
  :super ros::object
  :slots (_x _y _ek ))

(defmethod hsr_handing::fuzzyResponse
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:ek __ek) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _ek (float __ek))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:ek
   (&optional __ek)
   (if __ek (setq _ek __ek)) _ek)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _ek
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ek
       (sys::poke _ek (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ek
     (setq _ek (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hsr_handing::fuzzy
  :super ros::object
  :slots ())

(setf (get hsr_handing::fuzzy :md5sum-) "c8c38984a6ef7601852535eddb6b97ca")
(setf (get hsr_handing::fuzzy :datatype-) "hsr_handing/fuzzy")
(setf (get hsr_handing::fuzzy :request) hsr_handing::fuzzyRequest)
(setf (get hsr_handing::fuzzy :response) hsr_handing::fuzzyResponse)

(defmethod hsr_handing::fuzzyRequest
  (:response () (instance hsr_handing::fuzzyResponse :init)))

(setf (get hsr_handing::fuzzyRequest :md5sum-) "c8c38984a6ef7601852535eddb6b97ca")
(setf (get hsr_handing::fuzzyRequest :datatype-) "hsr_handing/fuzzyRequest")
(setf (get hsr_handing::fuzzyRequest :definition-)
      "float64 fy
float64 fz
float64 old_fy
float64 old_fz
---
float64 x
float64 y
float64 ek

")

(setf (get hsr_handing::fuzzyResponse :md5sum-) "c8c38984a6ef7601852535eddb6b97ca")
(setf (get hsr_handing::fuzzyResponse :datatype-) "hsr_handing/fuzzyResponse")
(setf (get hsr_handing::fuzzyResponse :definition-)
      "float64 fy
float64 fz
float64 old_fy
float64 old_fz
---
float64 x
float64 y
float64 ek

")



(provide :hsr_handing/fuzzy "c8c38984a6ef7601852535eddb6b97ca")


