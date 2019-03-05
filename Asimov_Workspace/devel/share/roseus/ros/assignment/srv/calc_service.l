;; Auto-generated. Do not edit!


(when (boundp 'assignment::calc_service)
  (if (not (find-package "ASSIGNMENT"))
    (make-package "ASSIGNMENT"))
  (shadow 'calc_service (find-package "ASSIGNMENT")))
(unless (find-package "ASSIGNMENT::CALC_SERVICE")
  (make-package "ASSIGNMENT::CALC_SERVICE"))
(unless (find-package "ASSIGNMENT::CALC_SERVICEREQUEST")
  (make-package "ASSIGNMENT::CALC_SERVICEREQUEST"))
(unless (find-package "ASSIGNMENT::CALC_SERVICERESPONSE")
  (make-package "ASSIGNMENT::CALC_SERVICERESPONSE"))

(in-package "ROS")





(defclass assignment::calc_serviceRequest
  :super ros::object
  :slots (_num1 _num2 _operator_id ))

(defmethod assignment::calc_serviceRequest
  (:init
   (&key
    ((:num1 __num1) 0.0)
    ((:num2 __num2) 0.0)
    ((:operator_id __operator_id) 0)
    )
   (send-super :init)
   (setq _num1 (float __num1))
   (setq _num2 (float __num2))
   (setq _operator_id (round __operator_id))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:operator_id
   (&optional __operator_id)
   (if __operator_id (setq _operator_id __operator_id)) _operator_id)
  (:serialization-length
   ()
   (+
    ;; float64 _num1
    8
    ;; float64 _num2
    8
    ;; int64 _operator_id
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
     ;; int64 _operator_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _operator_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _operator_id) (= (length (_operator_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_operator_id . bv) 0) 0) s)
              (write-long (ash (elt (_operator_id . bv) 1) -1) s))
             ((and (class _operator_id) (= (length (_operator_id . bv)) 1)) ;; big1
              (write-long (elt (_operator_id . bv) 0) s)
              (write-long (if (>= _operator_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _operator_id s)(write-long (if (>= _operator_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _num1
     (setq _num1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _num2
     (setq _num2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _operator_id
#+(or :alpha :irix6 :x86_64)
      (setf _operator_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _operator_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass assignment::calc_serviceResponse
  :super ros::object
  :slots (_result ))

(defmethod assignment::calc_serviceResponse
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

(defclass assignment::calc_service
  :super ros::object
  :slots ())

(setf (get assignment::calc_service :md5sum-) "28b1b2ea728b368b3d6cf927afcd1305")
(setf (get assignment::calc_service :datatype-) "assignment/calc_service")
(setf (get assignment::calc_service :request) assignment::calc_serviceRequest)
(setf (get assignment::calc_service :response) assignment::calc_serviceResponse)

(defmethod assignment::calc_serviceRequest
  (:response () (instance assignment::calc_serviceResponse :init)))

(setf (get assignment::calc_serviceRequest :md5sum-) "28b1b2ea728b368b3d6cf927afcd1305")
(setf (get assignment::calc_serviceRequest :datatype-) "assignment/calc_serviceRequest")
(setf (get assignment::calc_serviceRequest :definition-)
      "float64 num1
float64 num2
int64 operator_id
---
float64 result
")

(setf (get assignment::calc_serviceResponse :md5sum-) "28b1b2ea728b368b3d6cf927afcd1305")
(setf (get assignment::calc_serviceResponse :datatype-) "assignment/calc_serviceResponse")
(setf (get assignment::calc_serviceResponse :definition-)
      "float64 num1
float64 num2
int64 operator_id
---
float64 result
")



(provide :assignment/calc_service "28b1b2ea728b368b3d6cf927afcd1305")


