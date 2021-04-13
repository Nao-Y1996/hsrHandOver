;; Auto-generated. Do not edit!


(when (boundp 'key_controll::key)
  (if (not (find-package "KEY_CONTROLL"))
    (make-package "KEY_CONTROLL"))
  (shadow 'key (find-package "KEY_CONTROLL")))
(unless (find-package "KEY_CONTROLL::KEY")
  (make-package "KEY_CONTROLL::KEY"))

(in-package "ROS")
;;//! \htmlinclude key.msg.html


(defclass key_controll::key
  :super ros::object
  :slots (_key ))

(defmethod key_controll::key
  (:init
   (&key
    ((:key __key) "")
    )
   (send-super :init)
   (setq _key (string __key))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get key_controll::key :md5sum-) "e0e6b82860d1fefbdaa2c52c0b6f712e")
(setf (get key_controll::key :datatype-) "key_controll/key")
(setf (get key_controll::key :definition-)
      "string key

")



(provide :key_controll/key "e0e6b82860d1fefbdaa2c52c0b6f712e")


