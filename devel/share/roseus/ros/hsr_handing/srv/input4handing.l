;; Auto-generated. Do not edit!


(when (boundp 'hsr_handing::input4handing)
  (if (not (find-package "HSR_HANDING"))
    (make-package "HSR_HANDING"))
  (shadow 'input4handing (find-package "HSR_HANDING")))
(unless (find-package "HSR_HANDING::INPUT4HANDING")
  (make-package "HSR_HANDING::INPUT4HANDING"))
(unless (find-package "HSR_HANDING::INPUT4HANDINGREQUEST")
  (make-package "HSR_HANDING::INPUT4HANDINGREQUEST"))
(unless (find-package "HSR_HANDING::INPUT4HANDINGRESPONSE")
  (make-package "HSR_HANDING::INPUT4HANDINGRESPONSE"))

(in-package "ROS")





(defclass hsr_handing::input4handingRequest
  :super ros::object
  :slots (_input_key ))

(defmethod hsr_handing::input4handingRequest
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

(defclass hsr_handing::input4handingResponse
  :super ros::object
  :slots (_action_name ))

(defmethod hsr_handing::input4handingResponse
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

(defclass hsr_handing::input4handing
  :super ros::object
  :slots ())

(setf (get hsr_handing::input4handing :md5sum-) "7fe954f65abd774fd7fd0cc14c5c3b00")
(setf (get hsr_handing::input4handing :datatype-) "hsr_handing/input4handing")
(setf (get hsr_handing::input4handing :request) hsr_handing::input4handingRequest)
(setf (get hsr_handing::input4handing :response) hsr_handing::input4handingResponse)

(defmethod hsr_handing::input4handingRequest
  (:response () (instance hsr_handing::input4handingResponse :init)))

(setf (get hsr_handing::input4handingRequest :md5sum-) "7fe954f65abd774fd7fd0cc14c5c3b00")
(setf (get hsr_handing::input4handingRequest :datatype-) "hsr_handing/input4handingRequest")
(setf (get hsr_handing::input4handingRequest :definition-)
      "string  input_key
---
string action_name

")

(setf (get hsr_handing::input4handingResponse :md5sum-) "7fe954f65abd774fd7fd0cc14c5c3b00")
(setf (get hsr_handing::input4handingResponse :datatype-) "hsr_handing/input4handingResponse")
(setf (get hsr_handing::input4handingResponse :definition-)
      "string  input_key
---
string action_name

")



(provide :hsr_handing/input4handing "7fe954f65abd774fd7fd0cc14c5c3b00")


