;; Auto-generated. Do not edit!


(when (boundp 'urdf_tutorial::changecontrolledjoints)
  (if (not (find-package "URDF_TUTORIAL"))
    (make-package "URDF_TUTORIAL"))
  (shadow 'changecontrolledjoints (find-package "URDF_TUTORIAL")))
(unless (find-package "URDF_TUTORIAL::CHANGECONTROLLEDJOINTS")
  (make-package "URDF_TUTORIAL::CHANGECONTROLLEDJOINTS"))
(unless (find-package "URDF_TUTORIAL::CHANGECONTROLLEDJOINTSREQUEST")
  (make-package "URDF_TUTORIAL::CHANGECONTROLLEDJOINTSREQUEST"))
(unless (find-package "URDF_TUTORIAL::CHANGECONTROLLEDJOINTSRESPONSE")
  (make-package "URDF_TUTORIAL::CHANGECONTROLLEDJOINTSRESPONSE"))

(in-package "ROS")





(defclass urdf_tutorial::changecontrolledjointsRequest
  :super ros::object
  :slots (_c1 _c2 ))

(defmethod urdf_tutorial::changecontrolledjointsRequest
  (:init
   (&key
    ((:c1 __c1) 0)
    ((:c2 __c2) 0)
    )
   (send-super :init)
   (setq _c1 (round __c1))
   (setq _c2 (round __c2))
   self)
  (:c1
   (&optional __c1)
   (if __c1 (setq _c1 __c1)) _c1)
  (:c2
   (&optional __c2)
   (if __c2 (setq _c2 __c2)) _c2)
  (:serialization-length
   ()
   (+
    ;; int32 _c1
    4
    ;; int32 _c2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _c1
       (write-long _c1 s)
     ;; int32 _c2
       (write-long _c2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _c1
     (setq _c1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _c2
     (setq _c2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass urdf_tutorial::changecontrolledjointsResponse
  :super ros::object
  :slots ())

(defmethod urdf_tutorial::changecontrolledjointsResponse
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

(defclass urdf_tutorial::changecontrolledjoints
  :super ros::object
  :slots ())

(setf (get urdf_tutorial::changecontrolledjoints :md5sum-) "283ee42b1d51b895e07842f960389784")
(setf (get urdf_tutorial::changecontrolledjoints :datatype-) "urdf_tutorial/changecontrolledjoints")
(setf (get urdf_tutorial::changecontrolledjoints :request) urdf_tutorial::changecontrolledjointsRequest)
(setf (get urdf_tutorial::changecontrolledjoints :response) urdf_tutorial::changecontrolledjointsResponse)

(defmethod urdf_tutorial::changecontrolledjointsRequest
  (:response () (instance urdf_tutorial::changecontrolledjointsResponse :init)))

(setf (get urdf_tutorial::changecontrolledjointsRequest :md5sum-) "283ee42b1d51b895e07842f960389784")
(setf (get urdf_tutorial::changecontrolledjointsRequest :datatype-) "urdf_tutorial/changecontrolledjointsRequest")
(setf (get urdf_tutorial::changecontrolledjointsRequest :definition-)
      "int32 c1
int32 c2
---

")

(setf (get urdf_tutorial::changecontrolledjointsResponse :md5sum-) "283ee42b1d51b895e07842f960389784")
(setf (get urdf_tutorial::changecontrolledjointsResponse :datatype-) "urdf_tutorial/changecontrolledjointsResponse")
(setf (get urdf_tutorial::changecontrolledjointsResponse :definition-)
      "int32 c1
int32 c2
---

")



(provide :urdf_tutorial/changecontrolledjoints "283ee42b1d51b895e07842f960389784")


