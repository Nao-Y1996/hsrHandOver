;; Auto-generated. Do not edit!


(when (boundp 'key_controll::back_key)
  (if (not (find-package "KEY_CONTROLL"))
    (make-package "KEY_CONTROLL"))
  (shadow 'back_key (find-package "KEY_CONTROLL")))
(unless (find-package "KEY_CONTROLL::BACK_KEY")
  (make-package "KEY_CONTROLL::BACK_KEY"))
(unless (find-package "KEY_CONTROLL::BACK_KEYREQUEST")
  (make-package "KEY_CONTROLL::BACK_KEYREQUEST"))
(unless (find-package "KEY_CONTROLL::BACK_KEYRESPONSE")
  (make-package "KEY_CONTROLL::BACK_KEYRESPONSE"))

(in-package "ROS")





(defclass key_controll::back_keyRequest
  :super ros::object
  :slots (_back_key ))

(defmethod key_controll::back_keyRequest
  (:init
   (&key
    ((:back_key __back_key) "")
    )
   (send-super :init)
   (setq _back_key (string __back_key))
   self)
  (:back_key
   (&optional __back_key)
   (if __back_key (setq _back_key __back_key)) _back_key)
  (:serialization-length
   ()
   (+
    ;; string _back_key
    4 (length _back_key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _back_key
       (write-long (length _back_key) s) (princ _back_key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _back_key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _back_key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass key_controll::back_keyResponse
  :super ros::object
  :slots (_action_name ))

(defmethod key_controll::back_keyResponse
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

(defclass key_controll::back_key
  :super ros::object
  :slots ())

(setf (get key_controll::back_key :md5sum-) "ec0067f1ae04091f857aa4aada8b0360")
(setf (get key_controll::back_key :datatype-) "key_controll/back_key")
(setf (get key_controll::back_key :request) key_controll::back_keyRequest)
(setf (get key_controll::back_key :response) key_controll::back_keyResponse)

(defmethod key_controll::back_keyRequest
  (:response () (instance key_controll::back_keyResponse :init)))

(setf (get key_controll::back_keyRequest :md5sum-) "ec0067f1ae04091f857aa4aada8b0360")
(setf (get key_controll::back_keyRequest :datatype-) "key_controll/back_keyRequest")
(setf (get key_controll::back_keyRequest :definition-)
      "string  back_key
---
string action_name

")

(setf (get key_controll::back_keyResponse :md5sum-) "ec0067f1ae04091f857aa4aada8b0360")
(setf (get key_controll::back_keyResponse :datatype-) "key_controll/back_keyResponse")
(setf (get key_controll::back_keyResponse :definition-)
      "string  back_key
---
string action_name

")



(provide :key_controll/back_key "ec0067f1ae04091f857aa4aada8b0360")


