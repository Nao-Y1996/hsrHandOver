;; Auto-generated. Do not edit!


(when (boundp 'hsr_handing::pose_info)
  (if (not (find-package "HSR_HANDING"))
    (make-package "HSR_HANDING"))
  (shadow 'pose_info (find-package "HSR_HANDING")))
(unless (find-package "HSR_HANDING::POSE_INFO")
  (make-package "HSR_HANDING::POSE_INFO"))

(in-package "ROS")
;;//! \htmlinclude pose_info.msg.html


(defclass hsr_handing::pose_info
  :super ros::object
  :slots (_pose_identification_number ))

(defmethod hsr_handing::pose_info
  (:init
   (&key
    ((:pose_identification_number __pose_identification_number) 0.0)
    )
   (send-super :init)
   (setq _pose_identification_number (float __pose_identification_number))
   self)
  (:pose_identification_number
   (&optional __pose_identification_number)
   (if __pose_identification_number (setq _pose_identification_number __pose_identification_number)) _pose_identification_number)
  (:serialization-length
   ()
   (+
    ;; float32 _pose_identification_number
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pose_identification_number
       (sys::poke _pose_identification_number (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pose_identification_number
     (setq _pose_identification_number (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hsr_handing::pose_info :md5sum-) "d2665a7040cc32206ef659f15e9d544d")
(setf (get hsr_handing::pose_info :datatype-) "hsr_handing/pose_info")
(setf (get hsr_handing::pose_info :definition-)
      "float32 pose_identification_number

")



(provide :hsr_handing/pose_info "d2665a7040cc32206ef659f15e9d544d")


