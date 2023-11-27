
(cl:in-package :asdf)

(defsystem "urdf_tutorial-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "changecontrolledjoints" :depends-on ("_package_changecontrolledjoints"))
    (:file "_package_changecontrolledjoints" :depends-on ("_package"))
    (:file "changescale" :depends-on ("_package_changescale"))
    (:file "_package_changescale" :depends-on ("_package"))
  ))