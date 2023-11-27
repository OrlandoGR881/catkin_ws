; Auto-generated. Do not edit!


(cl:in-package urdf_tutorial-srv)


;//! \htmlinclude changecontrolledjoints-request.msg.html

(cl:defclass <changecontrolledjoints-request> (roslisp-msg-protocol:ros-message)
  ((c1
    :reader c1
    :initarg :c1
    :type cl:integer
    :initform 0)
   (c2
    :reader c2
    :initarg :c2
    :type cl:integer
    :initform 0))
)

(cl:defclass changecontrolledjoints-request (<changecontrolledjoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <changecontrolledjoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'changecontrolledjoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name urdf_tutorial-srv:<changecontrolledjoints-request> is deprecated: use urdf_tutorial-srv:changecontrolledjoints-request instead.")))

(cl:ensure-generic-function 'c1-val :lambda-list '(m))
(cl:defmethod c1-val ((m <changecontrolledjoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader urdf_tutorial-srv:c1-val is deprecated.  Use urdf_tutorial-srv:c1 instead.")
  (c1 m))

(cl:ensure-generic-function 'c2-val :lambda-list '(m))
(cl:defmethod c2-val ((m <changecontrolledjoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader urdf_tutorial-srv:c2-val is deprecated.  Use urdf_tutorial-srv:c2 instead.")
  (c2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <changecontrolledjoints-request>) ostream)
  "Serializes a message object of type '<changecontrolledjoints-request>"
  (cl:let* ((signed (cl:slot-value msg 'c1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'c2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <changecontrolledjoints-request>) istream)
  "Deserializes a message object of type '<changecontrolledjoints-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'c1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'c2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<changecontrolledjoints-request>)))
  "Returns string type for a service object of type '<changecontrolledjoints-request>"
  "urdf_tutorial/changecontrolledjointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'changecontrolledjoints-request)))
  "Returns string type for a service object of type 'changecontrolledjoints-request"
  "urdf_tutorial/changecontrolledjointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<changecontrolledjoints-request>)))
  "Returns md5sum for a message object of type '<changecontrolledjoints-request>"
  "283ee42b1d51b895e07842f960389784")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'changecontrolledjoints-request)))
  "Returns md5sum for a message object of type 'changecontrolledjoints-request"
  "283ee42b1d51b895e07842f960389784")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<changecontrolledjoints-request>)))
  "Returns full string definition for message of type '<changecontrolledjoints-request>"
  (cl:format cl:nil "int32 c1~%int32 c2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'changecontrolledjoints-request)))
  "Returns full string definition for message of type 'changecontrolledjoints-request"
  (cl:format cl:nil "int32 c1~%int32 c2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <changecontrolledjoints-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <changecontrolledjoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'changecontrolledjoints-request
    (cl:cons ':c1 (c1 msg))
    (cl:cons ':c2 (c2 msg))
))
;//! \htmlinclude changecontrolledjoints-response.msg.html

(cl:defclass <changecontrolledjoints-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass changecontrolledjoints-response (<changecontrolledjoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <changecontrolledjoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'changecontrolledjoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name urdf_tutorial-srv:<changecontrolledjoints-response> is deprecated: use urdf_tutorial-srv:changecontrolledjoints-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <changecontrolledjoints-response>) ostream)
  "Serializes a message object of type '<changecontrolledjoints-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <changecontrolledjoints-response>) istream)
  "Deserializes a message object of type '<changecontrolledjoints-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<changecontrolledjoints-response>)))
  "Returns string type for a service object of type '<changecontrolledjoints-response>"
  "urdf_tutorial/changecontrolledjointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'changecontrolledjoints-response)))
  "Returns string type for a service object of type 'changecontrolledjoints-response"
  "urdf_tutorial/changecontrolledjointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<changecontrolledjoints-response>)))
  "Returns md5sum for a message object of type '<changecontrolledjoints-response>"
  "283ee42b1d51b895e07842f960389784")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'changecontrolledjoints-response)))
  "Returns md5sum for a message object of type 'changecontrolledjoints-response"
  "283ee42b1d51b895e07842f960389784")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<changecontrolledjoints-response>)))
  "Returns full string definition for message of type '<changecontrolledjoints-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'changecontrolledjoints-response)))
  "Returns full string definition for message of type 'changecontrolledjoints-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <changecontrolledjoints-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <changecontrolledjoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'changecontrolledjoints-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'changecontrolledjoints)))
  'changecontrolledjoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'changecontrolledjoints)))
  'changecontrolledjoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'changecontrolledjoints)))
  "Returns string type for a service object of type '<changecontrolledjoints>"
  "urdf_tutorial/changecontrolledjoints")