;; Auto-generated. Do not edit!


(when (boundp 'mytopic::student)
  (if (not (find-package "MYTOPIC"))
    (make-package "MYTOPIC"))
  (shadow 'student (find-package "MYTOPIC")))
(unless (find-package "MYTOPIC::STUDENT")
  (make-package "MYTOPIC::STUDENT"))

(in-package "ROS")
;;//! \htmlinclude student.msg.html


(defclass mytopic::student
  :super ros::object
  :slots (_name _number _course _score ))

(defmethod mytopic::student
  (:init
   (&key
    ((:name __name) "")
    ((:number __number) "")
    ((:course __course) "")
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _number (string __number))
   (setq _course (string __course))
   (setq _score (float __score))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:course
   (&optional __course)
   (if __course (setq _course __course)) _course)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _number
    4 (length _number)
    ;; string _course
    4 (length _course)
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; string _course
       (write-long (length _course) s) (princ _course s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _course
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _course (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mytopic::student :md5sum-) "31f181a25cf11cee4124a8e13864eb04")
(setf (get mytopic::student :datatype-) "mytopic/student")
(setf (get mytopic::student :definition-)
      "string name
string number
string course
float32 score
")



(provide :mytopic/student "31f181a25cf11cee4124a8e13864eb04")


