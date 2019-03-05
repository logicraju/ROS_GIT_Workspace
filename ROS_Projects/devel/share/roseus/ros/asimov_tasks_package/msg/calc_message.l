;; Auto-generated. Do not edit!


(when (boundp 'asimov_tasks_package::calc_message)
  (if (not (find-package "ASIMOV_TASKS_PACKAGE"))
    (make-package "ASIMOV_TASKS_PACKAGE"))
  (shadow 'calc_message (find-package "ASIMOV_TASKS_PACKAGE")))
(unless (find-package "ASIMOV_TASKS_PACKAGE::CALC_MESSAGE")
  (make-package "ASIMOV_TASKS_PACKAGE::CALC_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude calc_message.msg.html


(defclass asimov_tasks_package::calc_message
  :super ros::object
  :slots ())

(defmethod asimov_tasks_package::calc_message
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

(setf (get asimov_tasks_package::calc_message :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get asimov_tasks_package::calc_message :datatype-) "asimov_tasks_package/calc_message")
(setf (get asimov_tasks_package::calc_message :definition-)
      "
")



(provide :asimov_tasks_package/calc_message "d41d8cd98f00b204e9800998ecf8427e")


