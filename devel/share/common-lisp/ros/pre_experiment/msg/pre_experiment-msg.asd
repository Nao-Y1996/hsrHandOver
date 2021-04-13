
(cl:in-package :asdf)

(defsystem "pre_experiment-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "face_info" :depends-on ("_package_face_info"))
    (:file "_package_face_info" :depends-on ("_package"))
    (:file "grasp_key" :depends-on ("_package_grasp_key"))
    (:file "_package_grasp_key" :depends-on ("_package"))
  ))