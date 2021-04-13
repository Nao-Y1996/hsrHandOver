;; Auto-generated. Do not edit!


(when (boundp 'key_controll::left_key)
  (if (not (find-package "KEY_CONTROLL"))
    (make-package "KEY_CONTROLL"))
  (shadow 'left_key (find-package "KEY_CONTROLL")))
(unless (find-package "KEY_CONTROLL::LEFT_KEY")
  (make-package "KEY_CONTROLL::LEFT_KEY"))
(unless (find-package "KEY_CONTROLL::LEFT_KEYREQUEST")
  (make-package "KEY_CONTROLL::LEFT_KEYREQUEST"))
(unless (find-package "KEY_CONTROLL::LEFT_KEYRESPONSE")
  (make-package "KEY_CONTROLL::LEFT_KEYRESPONSE"))

(in-package "ROS")





(defclass key_controll::left_keyRequest
  :super ros::object
  :slots (_left_key ))

(defmethod key_controll::left_keyRequest
  (:init
   (&key
    ((:left_key __left_key) "")
    )
   (send-super :init)
   (setq _left_key (string __left_key))
   self)
  (:left_key
   (&optional __left_key)
   (if __left_key (setq _left_key __left_key)) _left_key)
  (:serialization-length
   ()
   (+
    ;; string _left_key
    4 (length _left_key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _left_key
       (write-long (length _left_key) s) (princ _left_key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _left_key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _left_key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass key_controll::left_keyResponse
  :super ros::object
  :slots (_action_name ))

(defmethod key_controll::left_keyResponse
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

(defclass key_controll::left_key
  :super ros::object
  :slots ())

(setf (get key_controll::left_key :md5sum-) "92cc5915248733a71486eaf081ac9e84")
(setf (get key_controll::left_key :datatype-) "key_controll/left_key")
(setf (get key_controll::left_key :request) key_controll::left_keyRequest)
(setf (get key_controll::left_key :response) key_controll::left_keyResponse)

(defmethod key_controll::left_keyRequest
  (:response () (instance key_controll::left_keyResponse :init)))

(setf (get key_controll::left_keyRequest :md5sum-) "92cc5915248733a71486eaf081ac9e84")
(setf (get key_controll::left_keyRequest :datatype-) "key_controll/left_keyRequest")
(setf (get key_controll::left_keyRequest :definition-)
      "string  left_key
---
string action_name

")

(setf (get key_controll::left_keyResponse :md5sum-) "92cc5915248733a71486eaf081ac9e84")
(setf (get key_controll::left_keyResponse :datatype-) "key_controll/left_keyResponse")
(setf (get key_controll::left_keyResponse :definition-)
      "string  left_key
---
string action_name

")



(provide :key_controll/left_key "92cc5915248733a71486eaf081ac9e84")


