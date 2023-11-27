;; Auto-generated. Do not edit!


(when (boundp 'urdf_tutorial::changescale)
  (if (not (find-package "URDF_TUTORIAL"))
    (make-package "URDF_TUTORIAL"))
  (shadow 'changescale (find-package "URDF_TUTORIAL")))
(unless (find-package "URDF_TUTORIAL::CHANGESCALE")
  (make-package "URDF_TUTORIAL::CHANGESCALE"))
(unless (find-package "URDF_TUTORIAL::CHANGESCALEREQUEST")
  (make-package "URDF_TUTORIAL::CHANGESCALEREQUEST"))
(unless (find-package "URDF_TUTORIAL::CHANGESCALERESPONSE")
  (make-package "URDF_TUTORIAL::CHANGESCALERESPONSE"))

(in-package "ROS")





(defclass urdf_tutorial::changescaleRequest
  :super ros::object
  :slots (_s ))

(defmethod urdf_tutorial::changescaleRequest
  (:init
   (&key
    ((:s __s) 0.0)
    )
   (send-super :init)
   (setq _s (float __s))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:serialization-length
   ()
   (+
    ;; float32 _s
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass urdf_tutorial::changescaleResponse
  :super ros::object
  :slots ())

(defmethod urdf_tutorial::changescaleResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass urdf_tutorial::changescale
  :super ros::object
  :slots ())

(setf (get urdf_tutorial::changescale :md5sum-) "bc08dbcb40b2ba4b05703f0913420f07")
(setf (get urdf_tutorial::changescale :datatype-) "urdf_tutorial/changescale")
(setf (get urdf_tutorial::changescale :request) urdf_tutorial::changescaleRequest)
(setf (get urdf_tutorial::changescale :response) urdf_tutorial::changescaleResponse)

(defmethod urdf_tutorial::changescaleRequest
  (:response () (instance urdf_tutorial::changescaleResponse :init)))

(setf (get urdf_tutorial::changescaleRequest :md5sum-) "bc08dbcb40b2ba4b05703f0913420f07")
(setf (get urdf_tutorial::changescaleRequest :datatype-) "urdf_tutorial/changescaleRequest")
(setf (get urdf_tutorial::changescaleRequest :definition-)
      "float32 s
---

")

(setf (get urdf_tutorial::changescaleResponse :md5sum-) "bc08dbcb40b2ba4b05703f0913420f07")
(setf (get urdf_tutorial::changescaleResponse :datatype-) "urdf_tutorial/changescaleResponse")
(setf (get urdf_tutorial::changescaleResponse :definition-)
      "float32 s
---

")



(provide :urdf_tutorial/changescale "bc08dbcb40b2ba4b05703f0913420f07")


