;; Auto-generated. Do not edit!


(when (boundp 'pre_experiment::input4handing)
  (if (not (find-package "PRE_EXPERIMENT"))
    (make-package "PRE_EXPERIMENT"))
  (shadow 'input4handing (find-package "PRE_EXPERIMENT")))
(unless (find-package "PRE_EXPERIMENT::INPUT4HANDING")
  (make-package "PRE_EXPERIMENT::INPUT4HANDING"))
(unless (find-package "PRE_EXPERIMENT::INPUT4HANDINGREQUEST")
  (make-package "PRE_EXPERIMENT::INPUT4HANDINGREQUEST"))
(unless (find-package "PRE_EXPERIMENT::INPUT4HANDINGRESPONSE")
  (make-package "PRE_EXPERIMENT::INPUT4HANDINGRESPONSE"))

(in-package "ROS")





(defclass pre_experiment::input4handingRequest
  :super ros::object
  :slots (_input_key ))

(defmethod pre_experiment::input4handingRequest
  (:init
   (&key
    ((:input_key __input_key) "")
    )
   (send-super :init)
   (setq _input_key (string __input_key))
   self)
  (:input_key
   (&optional __input_key)
   (if __input_key (setq _input_key __input_key)) _input_key)
  (:serialization-length
   ()
   (+
    ;; string _input_key
    4 (length _input_key)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input_key
       (write-long (length _input_key) s) (princ _input_key s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input_key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input_key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pre_experiment::input4handingResponse
  :super ros::object
  :slots (_action_name ))

(defmethod pre_experiment::input4handingResponse
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

(defclass pre_experiment::input4handing
  :super ros::object
  :slots ())

(setf (get pre_experiment::input4handing :md5sum-) "7fe954f65abd774fd7fd0cc14c5c3b00")
(setf (get pre_experiment::input4handing :datatype-) "pre_experiment/input4handing")
(setf (get pre_experiment::input4handing :request) pre_experiment::input4handingRequest)
(setf (get pre_experiment::input4handing :response) pre_experiment::input4handingResponse)

(defmethod pre_experiment::input4handingRequest
  (:response () (instance pre_experiment::input4handingResponse :init)))

(setf (get pre_experiment::input4handingRequest :md5sum-) "7fe954f65abd774fd7fd0cc14c5c3b00")
(setf (get pre_experiment::input4handingRequest :datatype-) "pre_experiment/input4handingRequest")
(setf (get pre_experiment::input4handingRequest :definition-)
      "string  input_key
---
string action_name

")

(setf (get pre_experiment::input4handingResponse :md5sum-) "7fe954f65abd774fd7fd0cc14c5c3b00")
(setf (get pre_experiment::input4handingResponse :datatype-) "pre_experiment/input4handingResponse")
(setf (get pre_experiment::input4handingResponse :definition-)
      "string  input_key
---
string action_name

")



(provide :pre_experiment/input4handing "7fe954f65abd774fd7fd0cc14c5c3b00")


