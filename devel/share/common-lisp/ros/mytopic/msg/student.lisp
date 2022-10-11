; Auto-generated. Do not edit!


(cl:in-package mytopic-msg)


;//! \htmlinclude student.msg.html

(cl:defclass <student> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (course
    :reader course
    :initarg :course
    :type cl:string
    :initform "")
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass student (<student>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <student>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'student)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mytopic-msg:<student> is deprecated: use mytopic-msg:student instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mytopic-msg:name-val is deprecated.  Use mytopic-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mytopic-msg:number-val is deprecated.  Use mytopic-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'course-val :lambda-list '(m))
(cl:defmethod course-val ((m <student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mytopic-msg:course-val is deprecated.  Use mytopic-msg:course instead.")
  (course m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <student>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mytopic-msg:score-val is deprecated.  Use mytopic-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <student>) ostream)
  "Serializes a message object of type '<student>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'course))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'course))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <student>) istream)
  "Deserializes a message object of type '<student>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'course) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'course) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<student>)))
  "Returns string type for a message object of type '<student>"
  "mytopic/student")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'student)))
  "Returns string type for a message object of type 'student"
  "mytopic/student")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<student>)))
  "Returns md5sum for a message object of type '<student>"
  "31f181a25cf11cee4124a8e13864eb04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'student)))
  "Returns md5sum for a message object of type 'student"
  "31f181a25cf11cee4124a8e13864eb04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<student>)))
  "Returns full string definition for message of type '<student>"
  (cl:format cl:nil "string name~%string number~%string course~%float32 score~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'student)))
  "Returns full string definition for message of type 'student"
  (cl:format cl:nil "string name~%string number~%string course~%float32 score~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <student>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'number))
     4 (cl:length (cl:slot-value msg 'course))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <student>))
  "Converts a ROS message object to a list"
  (cl:list 'student
    (cl:cons ':name (name msg))
    (cl:cons ':number (number msg))
    (cl:cons ':course (course msg))
    (cl:cons ':score (score msg))
))
