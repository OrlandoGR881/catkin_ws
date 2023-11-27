; Auto-generated. Do not edit!


(cl:in-package urdf_tutorial-srv)


;//! \htmlinclude changescale-request.msg.html

(cl:defclass <changescale-request> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0))
)

(cl:defclass changescale-request (<changescale-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <changescale-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'changescale-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name urdf_tutorial-srv:<changescale-request> is deprecated: use urdf_tutorial-srv:changescale-request instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <changescale-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader urdf_tutorial-srv:s-val is deprecated.  Use urdf_tutorial-srv:s instead.")
  (s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <changescale-request>) ostream)
  "Serializes a message object of type '<changescale-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <changescale-request>) istream)
  "Deserializes a message object of type '<changescale-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<changescale-request>)))
  "Returns string type for a service object of type '<changescale-request>"
  "urdf_tutorial/changescaleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'changescale-request)))
  "Returns string type for a service object of type 'changescale-request"
  "urdf_tutorial/changescaleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<changescale-request>)))
  "Returns md5sum for a message object of type '<changescale-request>"
  "bc08dbcb40b2ba4b05703f0913420f07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'changescale-request)))
  "Returns md5sum for a message object of type 'changescale-request"
  "bc08dbcb40b2ba4b05703f0913420f07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<changescale-request>)))
  "Returns full string definition for message of type '<changescale-request>"
  (cl:format cl:nil "float32 s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'changescale-request)))
  "Returns full string definition for message of type 'changescale-request"
  (cl:format cl:nil "float32 s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <changescale-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <changescale-request>))
  "Converts a ROS message object to a list"
  (cl:list 'changescale-request
    (cl:cons ':s (s msg))
))
;//! \htmlinclude changescale-response.msg.html

(cl:defclass <changescale-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass changescale-response (<changescale-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <changescale-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'changescale-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name urdf_tutorial-srv:<changescale-response> is deprecated: use urdf_tutorial-srv:changescale-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <changescale-response>) ostream)
  "Serializes a message object of type '<changescale-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <changescale-response>) istream)
  "Deserializes a message object of type '<changescale-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<changescale-response>)))
  "Returns string type for a service object of type '<changescale-response>"
  "urdf_tutorial/changescaleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'changescale-response)))
  "Returns string type for a service object of type 'changescale-response"
  "urdf_tutorial/changescaleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<changescale-response>)))
  "Returns md5sum for a message object of type '<changescale-response>"
  "bc08dbcb40b2ba4b05703f0913420f07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'changescale-response)))
  "Returns md5sum for a message object of type 'changescale-response"
  "bc08dbcb40b2ba4b05703f0913420f07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<changescale-response>)))
  "Returns full string definition for message of type '<changescale-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'changescale-response)))
  "Returns full string definition for message of type 'changescale-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <changescale-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <changescale-response>))
  "Converts a ROS message object to a list"
  (cl:list 'changescale-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'changescale)))
  'changescale-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'changescale)))
  'changescale-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'changescale)))
  "Returns string type for a service object of type '<changescale>"
  "urdf_tutorial/changescale")