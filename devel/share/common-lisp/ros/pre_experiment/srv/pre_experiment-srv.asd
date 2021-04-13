
(cl:in-package :asdf)

(defsystem "pre_experiment-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "input4handing" :depends-on ("_package_input4handing"))
    (:file "_package_input4handing" :depends-on ("_package"))
  ))