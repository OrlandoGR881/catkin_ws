
(cl:in-package :asdf)

(defsystem "message_tests-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Changerate" :depends-on ("_package_Changerate"))
    (:file "_package_Changerate" :depends-on ("_package"))
    (:file "Changespeed" :depends-on ("_package_Changespeed"))
    (:file "_package_Changespeed" :depends-on ("_package"))
  ))