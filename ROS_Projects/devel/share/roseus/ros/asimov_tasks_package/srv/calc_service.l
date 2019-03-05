;; Auto-generated. Do not edit!


(when (boundp 'asimov_tasks_package::calc_service)
  (if (not (find-package "ASIMOV_TASKS_PACKAGE"))
    (make-package "ASIMOV_TASKS_PACKAGE"))
  (shadow 'calc_service (find-package "ASIMOV_TASKS_PACKAGE")))
(unless (find-package "ASIMOV_TASKS_PACKAGE::CALC_SERVICE")
  (make-package "ASIMOV_TASKS_PACKAGE::CALC_SERVICE"))
(unless (find-package "ASIMOV_TASKS_PACKAGE::CALC_SERVICEREQUEST")
  (make-package "ASIMOV_TASKS_PACKAGE::CALC_SERVICEREQUEST"))
(unless (find-package "ASIMOV_TASKS_PACKAGE::CALC_SERVICERESPONSE")
  (make-package "ASIMOV_TASKS_PACKAGE::CALC_SERVICERESPONSE"))

(in-package "ROS")





(defclass asimov_tasks_package::calc_serviceRequest
  :super ros::object
  :slots (_num1 _num2 _operation_id ))

(defmethod asimov_tasks_package::calc_serviceRequest
  (:init
   (&key
    ((:num1 __num1) 0.0)
    ((:num2 __num2) 0.0)
    ((:operation_id __operation_id) 0)
    )
   (send-super :init)
   (setq _num1 (float __num1))
   (setq _num2 (float __num2))
   (setq _operation_id (round __operation_id))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:operation_id
   (&optional __operation_id)
   (if __operation_id (setq _operation_id __operation_id)) _operation_id)
  (:serialization-length
   ()
   (+
    ;; float64 _num1
    8
    ;; float64 _num2
    8
    ;; int64 _operation_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _num1
       (sys::poke _num1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _num2
       (sys::poke _num2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _operation_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _operation_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _operation_id) (= (length (_operation_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_operation_id . bv) 0) 0) s)
              (write-long (ash (elt (_operation_id . bv) 1) -1) s))
             ((and (class _operation_id) (= (length (_operation_id . bv)) 1)) ;; big1
              (write-long (elt (_operation_id . bv) 0) s)
              (write-long (if (>= _operation_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _operation_id s)(write-long (if (>= _operation_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _num1
     (setq _num1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _num2
     (setq _num2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _operation_id
#+(or :alpha :irix6 :x86_64)
      (setf _operation_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _operation_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass asimov_tasks_package::calc_serviceResponse
  :super ros::object
  :slots (_result ))

(defmethod asimov_tasks_package::calc_serviceResponse
  (:init
   (&key
    ((:result __result) 0.0)
    )
   (send-super :init)
   (setq _result (float __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; float64 _result
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _result
       (sys::poke _result (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _result
     (setq _result (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass asimov_tasks_package::calc_service
  :super ros::object
  :slots ())

(setf (get asimov_tasks_package::calc_service :md5sum-) "1b84c9a3d2a8829a1c1fff193adfda10")
(setf (get asimov_tasks_package::calc_service :datatype-) "asimov_tasks_package/calc_service")
(setf (get asimov_tasks_package::calc_service :request) asimov_tasks_package::calc_serviceRequest)
(setf (get asimov_tasks_package::calc_service :response) asimov_tasks_package::calc_serviceResponse)

(defmethod asimov_tasks_package::calc_serviceRequest
  (:response () (instance asimov_tasks_package::calc_serviceResponse :init)))

(setf (get asimov_tasks_package::calc_serviceRequest :md5sum-) "1b84c9a3d2a8829a1c1fff193adfda10")
(setf (get asimov_tasks_package::calc_serviceRequest :datatype-) "asimov_tasks_package/calc_serviceRequest")
(setf (get asimov_tasks_package::calc_serviceRequest :definition-)
      "float64 num1
float64 num2
int64 operation_id
---
float64 result
")

(setf (get asimov_tasks_package::calc_serviceResponse :md5sum-) "1b84c9a3d2a8829a1c1fff193adfda10")
(setf (get asimov_tasks_package::calc_serviceResponse :datatype-) "asimov_tasks_package/calc_serviceResponse")
(setf (get asimov_tasks_package::calc_serviceResponse :definition-)
      "float64 num1
float64 num2
int64 operation_id
---
float64 result
")



(provide :asimov_tasks_package/calc_service "1b84c9a3d2a8829a1c1fff193adfda10")


