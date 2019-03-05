; Auto-generated. Do not edit!


(cl:in-package asimov_tasks_package-msg)


;//! \htmlinclude calc_message.msg.html

(cl:defclass <calc_message> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass calc_message (<calc_message>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <calc_message>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'calc_message)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asimov_tasks_package-msg:<calc_message> is deprecated: use asimov_tasks_package-msg:calc_message instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <calc_message>) ostream)
  "Serializes a message object of type '<calc_message>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <calc_message>) istream)
  "Deserializes a message object of type '<calc_message>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<calc_message>)))
  "Returns string type for a message object of type '<calc_message>"
  "asimov_tasks_package/calc_message")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'calc_message)))
  "Returns string type for a message object of type 'calc_message"
  "asimov_tasks_package/calc_message")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<calc_message>)))
  "Returns md5sum for a message object of type '<calc_message>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'calc_message)))
  "Returns md5sum for a message object of type 'calc_message"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<calc_message>)))
  "Returns full string definition for message of type '<calc_message>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'calc_message)))
  "Returns full string definition for message of type 'calc_message"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <calc_message>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <calc_message>))
  "Converts a ROS message object to a list"
  (cl:list 'calc_message
))
