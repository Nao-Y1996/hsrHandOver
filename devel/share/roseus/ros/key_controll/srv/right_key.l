;; Auto-generated. Do not edit!


(when (boundp 'key_controll::right_key)
  (if (not (find-package "KEY_CONTROLL"))
    (make-package "KEY_CONTROLL"))
  (shadow 'right_key (find-package "KEY_CONTROLL")))
(unless (find-package "KEY_CONTROLL::RIGHT_KEY")
  (make-package "KEY_CONTROLL::RIGHT_KEY"))
(unless (find-package "KEY_CONTROLL::RIGHT_KEYREQUEST")
  (make-package "KEY_CONTROLL::RIGHT_KEYREQUEST"))
(unless (find-package "KEY_CONTROLL::RIGHT_KEYRESPONSE")
  (make-package "KEY_CONTROLL::RIGHT_KEYRESPONSE"))

(in-package "ROS")





(defclass key_controll::right_keyRequest
  :super ros::object
  :slots (_right_key ))

(defmethod key_controll::right_keyRequest
  (:init
   (&key
    ((:right_key __right_key) "")
    )
   (send-super :init)
   (setq _right_key (string __right_key))
   self)
  (:right_key
   (&optional __right_key)
   (if __right_key (setq _right_key __right_key)) _right_key)
  (:serialization-length
   ()
   (+
    ;; string _right_key
    4 (length _right_key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _right_key
       (write-long (length _right_key) s) (princ _right_key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _right_key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _right_key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass key_controll::right_keyResponse
  :super ros::object
  :slots (_action_name ))

(defmethod key_controll::right_keyResponse
  (:init
   (&key
    ((:action_name __action_name) "")
    )
   (send-super :init)
   (setq _action_name (string __action_name))
   self)
  (:action_name
   (&optional __action_name)
   (if __action_name (setq _action_name __action_name)) _action_name)
  (:serialization-length
   ()
   (+
    ;; string _action_name
    4 (length _action_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action_name
       (write-long (length _action_name) s) (princ _action_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass key_controll::right_key
  :super ros::object
  :slots ())

(setf (get key_controll::right_key :md5sum-) "d08d8dc0caa70812602fb3a50e31f337")
(setf (get key_controll::right_key :datatype-) "key_controll/right_key")
(setf (get key_controll::right_key :request) key_controll::right_keyRequest)
(setf (get key_controll::right_key :response) key_controll::right_keyResponse)

(defmethod key_controll::right_keyRequest
  (:response () (instance key_controll::right_keyResponse :init)))

(setf (get key_controll::right_keyRequest :md5sum-) "d08d8dc0caa70812602fb3a50e31f337")
(setf (get key_controll::right_keyRequest :datatype-) "key_controll/right_keyRequest")
(setf (get key_controll::right_keyRequest :definition-)
      "string  right_key
---
string action_name

")

(setf (get key_controll::right_keyResponse :md5sum-) "d08d8dc0caa70812602fb3a50e31f337")
(setf (get key_controll::right_keyResponse :datatype-) "key_controll/right_keyResponse")
(setf (get key_controll::right_keyResponse :definition-)
      "string  right_key
---
string action_name

")



(provide :key_controll/right_key "d08d8dc0caa70812602fb3a50e31f337")


