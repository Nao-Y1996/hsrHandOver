;; Auto-generated. Do not edit!


(when (boundp 'key_controll::straight_key)
  (if (not (find-package "KEY_CONTROLL"))
    (make-package "KEY_CONTROLL"))
  (shadow 'straight_key (find-package "KEY_CONTROLL")))
(unless (find-package "KEY_CONTROLL::STRAIGHT_KEY")
  (make-package "KEY_CONTROLL::STRAIGHT_KEY"))
(unless (find-package "KEY_CONTROLL::STRAIGHT_KEYREQUEST")
  (make-package "KEY_CONTROLL::STRAIGHT_KEYREQUEST"))
(unless (find-package "KEY_CONTROLL::STRAIGHT_KEYRESPONSE")
  (make-package "KEY_CONTROLL::STRAIGHT_KEYRESPONSE"))

(in-package "ROS")





(defclass key_controll::straight_keyRequest
  :super ros::object
  :slots (_straight_key ))

(defmethod key_controll::straight_keyRequest
  (:init
   (&key
    ((:straight_key __straight_key) "")
    )
   (send-super :init)
   (setq _straight_key (string __straight_key))
   self)
  (:straight_key
   (&optional __straight_key)
   (if __straight_key (setq _straight_key __straight_key)) _straight_key)
  (:serialization-length
   ()
   (+
    ;; string _straight_key
    4 (length _straight_key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _straight_key
       (write-long (length _straight_key) s) (princ _straight_key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _straight_key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _straight_key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass key_controll::straight_keyResponse
  :super ros::object
  :slots (_action_name ))

(defmethod key_controll::straight_keyResponse
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

(defclass key_controll::straight_key
  :super ros::object
  :slots ())

(setf (get key_controll::straight_key :md5sum-) "cbd8e12ce029666dd69311e278e5a145")
(setf (get key_controll::straight_key :datatype-) "key_controll/straight_key")
(setf (get key_controll::straight_key :request) key_controll::straight_keyRequest)
(setf (get key_controll::straight_key :response) key_controll::straight_keyResponse)

(defmethod key_controll::straight_keyRequest
  (:response () (instance key_controll::straight_keyResponse :init)))

(setf (get key_controll::straight_keyRequest :md5sum-) "cbd8e12ce029666dd69311e278e5a145")
(setf (get key_controll::straight_keyRequest :datatype-) "key_controll/straight_keyRequest")
(setf (get key_controll::straight_keyRequest :definition-)
      "string  straight_key
---
string action_name

")

(setf (get key_controll::straight_keyResponse :md5sum-) "cbd8e12ce029666dd69311e278e5a145")
(setf (get key_controll::straight_keyResponse :datatype-) "key_controll/straight_keyResponse")
(setf (get key_controll::straight_keyResponse :definition-)
      "string  straight_key
---
string action_name

")



(provide :key_controll/straight_key "cbd8e12ce029666dd69311e278e5a145")


