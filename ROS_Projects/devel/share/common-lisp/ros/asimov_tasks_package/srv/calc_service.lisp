; Auto-generated. Do not edit!


(cl:in-package asimov_tasks_package-srv)


;//! \htmlinclude calc_service-request.msg.html

(cl:defclass <calc_service-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:float
    :initform 0.0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:float
    :initform 0.0)
   (operation_id
    :reader operation_id
    :initarg :operation_id
    :type cl:integer
    :initform 0))
)

(cl:defclass calc_service-request (<calc_service-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calc_service-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calc_service-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asimov_tasks_package-srv:<calc_service-request> is deprecated: use asimov_tasks_package-srv:calc_service-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <calc_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asimov_tasks_package-srv:num1-val is deprecated.  Use asimov_tasks_package-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <calc_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asimov_tasks_package-srv:num2-val is deprecated.  Use asimov_tasks_package-srv:num2 instead.")
  (num2 m))

(cl:ensure-generic-function 'operation_id-val :lambda-list '(m))
(cl:defmethod operation_id-val ((m <calc_service-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asimov_tasks_package-srv:operation_id-val is deprecated.  Use asimov_tasks_package-srv:operation_id instead.")
  (operation_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calc_service-request>) ostream)
  "Serializes a message object of type '<calc_service-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'num1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'num2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'operation_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calc_service-request>) istream)
  "Deserializes a message object of type '<calc_service-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calc_service-request>)))
  "Returns string type for a service object of type '<calc_service-request>"
  "asimov_tasks_package/calc_serviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calc_service-request)))
  "Returns string type for a service object of type 'calc_service-request"
  "asimov_tasks_package/calc_serviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calc_service-request>)))
  "Returns md5sum for a message object of type '<calc_service-request>"
  "1b84c9a3d2a8829a1c1fff193adfda10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calc_service-request)))
  "Returns md5sum for a message object of type 'calc_service-request"
  "1b84c9a3d2a8829a1c1fff193adfda10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calc_service-request>)))
  "Returns full string definition for message of type '<calc_service-request>"
  (cl:format cl:nil "float64 num1~%float64 num2~%int64 operation_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calc_service-request)))
  "Returns full string definition for message of type 'calc_service-request"
  (cl:format cl:nil "float64 num1~%float64 num2~%int64 operation_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calc_service-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calc_service-request>))
  "Converts a ROS message object to a list"
  (cl:list 'calc_service-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
    (cl:cons ':operation_id (operation_id msg))
))
;//! \htmlinclude calc_service-response.msg.html

(cl:defclass <calc_service-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:float
    :initform 0.0))
)

(cl:defclass calc_service-response (<calc_service-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calc_service-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calc_service-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asimov_tasks_package-srv:<calc_service-response> is deprecated: use asimov_tasks_package-srv:calc_service-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <calc_service-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asimov_tasks_package-srv:result-val is deprecated.  Use asimov_tasks_package-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calc_service-response>) ostream)
  "Serializes a message object of type '<calc_service-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calc_service-response>) istream)
  "Deserializes a message object of type '<calc_service-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'result) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calc_service-response>)))
  "Returns string type for a service object of type '<calc_service-response>"
  "asimov_tasks_package/calc_serviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calc_service-response)))
  "Returns string type for a service object of type 'calc_service-response"
  "asimov_tasks_package/calc_serviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calc_service-response>)))
  "Returns md5sum for a message object of type '<calc_service-response>"
  "1b84c9a3d2a8829a1c1fff193adfda10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calc_service-response)))
  "Returns md5sum for a message object of type 'calc_service-response"
  "1b84c9a3d2a8829a1c1fff193adfda10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calc_service-response>)))
  "Returns full string definition for message of type '<calc_service-response>"
  (cl:format cl:nil "float64 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calc_service-response)))
  "Returns full string definition for message of type 'calc_service-response"
  (cl:format cl:nil "float64 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calc_service-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calc_service-response>))
  "Converts a ROS message object to a list"
  (cl:list 'calc_service-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'calc_service)))
  'calc_service-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'calc_service)))
  'calc_service-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calc_service)))
  "Returns string type for a service object of type '<calc_service>"
  "asimov_tasks_package/calc_service")