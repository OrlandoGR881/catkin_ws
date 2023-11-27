;; Auto-generated. Do not edit!


(when (boundp 'message_tests::Changespeed)
  (if (not (find-package "MESSAGE_TESTS"))
    (make-package "MESSAGE_TESTS"))
  (shadow 'Changespeed (find-package "MESSAGE_TESTS")))
(unless (find-package "MESSAGE_TESTS::CHANGESPEED")
  (make-package "MESSAGE_TESTS::CHANGESPEED"))
(unless (find-package "MESSAGE_TESTS::CHANGESPEEDREQUEST")
  (make-package "MESSAGE_TESTS::CHANGESPEEDREQUEST"))
(unless (find-package "MESSAGE_TESTS::CHANGESPEEDRESPONSE")
  (make-package "MESSAGE_TESTS::CHANGESPEEDRESPONSE"))

(in-package "ROS")





(defclass message_tests::ChangespeedRequest
  :super ros::object
  :slots (_speed ))

(defmethod message_tests::ChangespeedRequest
  (:init
   (&key
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass message_tests::ChangespeedResponse
  :super ros::object
  :slots (_ret ))

(defmethod message_tests::ChangespeedResponse
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional (__ret :null))
   (if (not (eq __ret :null)) (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass message_tests::Changespeed
  :super ros::object
  :slots ())

(setf (get message_tests::Changespeed :md5sum-) "20ca7edbf819dc760de3c6263dc154b4")
(setf (get message_tests::Changespeed :datatype-) "message_tests/Changespeed")
(setf (get message_tests::Changespeed :request) message_tests::ChangespeedRequest)
(setf (get message_tests::Changespeed :response) message_tests::ChangespeedResponse)

(defmethod message_tests::ChangespeedRequest
  (:response () (instance message_tests::ChangespeedResponse :init)))

(setf (get message_tests::ChangespeedRequest :md5sum-) "20ca7edbf819dc760de3c6263dc154b4")
(setf (get message_tests::ChangespeedRequest :datatype-) "message_tests/ChangespeedRequest")
(setf (get message_tests::ChangespeedRequest :definition-)
      "float64 speed
---
bool ret
")

(setf (get message_tests::ChangespeedResponse :md5sum-) "20ca7edbf819dc760de3c6263dc154b4")
(setf (get message_tests::ChangespeedResponse :datatype-) "message_tests/ChangespeedResponse")
(setf (get message_tests::ChangespeedResponse :definition-)
      "float64 speed
---
bool ret
")



(provide :message_tests/Changespeed "20ca7edbf819dc760de3c6263dc154b4")


