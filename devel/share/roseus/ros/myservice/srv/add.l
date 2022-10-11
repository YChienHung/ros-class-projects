;; Auto-generated. Do not edit!


(when (boundp 'myservice::add)
  (if (not (find-package "MYSERVICE"))
    (make-package "MYSERVICE"))
  (shadow 'add (find-package "MYSERVICE")))
(unless (find-package "MYSERVICE::ADD")
  (make-package "MYSERVICE::ADD"))
(unless (find-package "MYSERVICE::ADDREQUEST")
  (make-package "MYSERVICE::ADDREQUEST"))
(unless (find-package "MYSERVICE::ADDRESPONSE")
  (make-package "MYSERVICE::ADDRESPONSE"))

(in-package "ROS")





(defclass myservice::addRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod myservice::addRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass myservice::addResponse
  :super ros::object
  :slots (_sum ))

(defmethod myservice::addResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass myservice::add
  :super ros::object
  :slots ())

(setf (get myservice::add :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get myservice::add :datatype-) "myservice/add")
(setf (get myservice::add :request) myservice::addRequest)
(setf (get myservice::add :response) myservice::addResponse)

(defmethod myservice::addRequest
  (:response () (instance myservice::addResponse :init)))

(setf (get myservice::addRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get myservice::addRequest :datatype-) "myservice/addRequest")
(setf (get myservice::addRequest :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum
")

(setf (get myservice::addResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get myservice::addResponse :datatype-) "myservice/addResponse")
(setf (get myservice::addResponse :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum
")



(provide :myservice/add "4781436a0c2affec8025955a6041e481")


