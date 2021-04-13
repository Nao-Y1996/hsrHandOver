;; Auto-generated. Do not edit!


(when (boundp 'hsr_handing::grasp_key)
  (if (not (find-package "HSR_HANDING"))
    (make-package "HSR_HANDING"))
  (shadow 'grasp_key (find-package "HSR_HANDING")))
(unless (find-package "HSR_HANDING::GRASP_KEY")
  (make-package "HSR_HANDING::GRASP_KEY"))

(in-package "ROS")
;;//! \htmlinclude grasp_key.msg.html


(defclass hsr_handing::grasp_key
  :super ros::object
  :slots (_grasp_key ))

(defmethod hsr_handing::grasp_key
  (:init
   (&key
    ((:grasp_key __grasp_key) "")
    )
   (send-super :init)
   (setq _grasp_key (string __grasp_key))
   self)
  (:grasp_key
   (&optional __grasp_key)
   (if __grasp_key (setq _grasp_key __grasp_key)) _grasp_key)
  (:serialization-length
   ()
   (+
    ;; string _grasp_key
    4 (length _grasp_key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _grasp_key
       (write-long (length _grasp_key) s) (princ _grasp_key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _grasp_key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _grasp_key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get hsr_handing::grasp_key :md5sum-) "3833578282f3854b4d750588d5638a4c")
(setf (get hsr_handing::grasp_key :datatype-) "hsr_handing/grasp_key")
(setf (get hsr_handing::grasp_key :definition-)
      "string grasp_key

")



(provide :hsr_handing/grasp_key "3833578282f3854b4d750588d5638a4c")


