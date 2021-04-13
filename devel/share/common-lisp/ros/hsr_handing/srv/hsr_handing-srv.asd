
(cl:in-package :asdf)

(defsystem "hsr_handing-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "fuzzy" :depends-on ("_package_fuzzy"))
    (:file "_package_fuzzy" :depends-on ("_package"))
    (:file "input4handing" :depends-on ("_package_input4handing"))
    (:file "_package_input4handing" :depends-on ("_package"))
  ))