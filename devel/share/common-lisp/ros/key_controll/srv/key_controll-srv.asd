
(cl:in-package :asdf)

(defsystem "key_controll-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "back_key" :depends-on ("_package_back_key"))
    (:file "_package_back_key" :depends-on ("_package"))
    (:file "left_key" :depends-on ("_package_left_key"))
    (:file "_package_left_key" :depends-on ("_package"))
    (:file "right_key" :depends-on ("_package_right_key"))
    (:file "_package_right_key" :depends-on ("_package"))
    (:file "straight_key" :depends-on ("_package_straight_key"))
    (:file "_package_straight_key" :depends-on ("_package"))
  ))