; Auto-generated. Do not edit!


(cl:in-package dlib_puppeteering-msg)


;//! \htmlinclude lm_points.msg.html

(cl:defclass <lm_points> (roslisp-msg-protocol:ros-message)
  ((dlib_X
    :reader dlib_X
    :initarg :dlib_X
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (dlib_Y
    :reader dlib_Y
    :initarg :dlib_Y
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (dlib_face_index
    :reader dlib_face_index
    :initarg :dlib_face_index
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass lm_points (<lm_points>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <lm_points>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'lm_points)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dlib_puppeteering-msg:<lm_points> is deprecated: use dlib_puppeteering-msg:lm_points instead.")))

(cl:ensure-generic-function 'dlib_X-val :lambda-list '(m))
(cl:defmethod dlib_X-val ((m <lm_points>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dlib_puppeteering-msg:dlib_X-val is deprecated.  Use dlib_puppeteering-msg:dlib_X instead.")
  (dlib_X m))

(cl:ensure-generic-function 'dlib_Y-val :lambda-list '(m))
(cl:defmethod dlib_Y-val ((m <lm_points>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dlib_puppeteering-msg:dlib_Y-val is deprecated.  Use dlib_puppeteering-msg:dlib_Y instead.")
  (dlib_Y m))

(cl:ensure-generic-function 'dlib_face_index-val :lambda-list '(m))
(cl:defmethod dlib_face_index-val ((m <lm_points>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dlib_puppeteering-msg:dlib_face_index-val is deprecated.  Use dlib_puppeteering-msg:dlib_face_index instead.")
  (dlib_face_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <lm_points>) ostream)
  "Serializes a message object of type '<lm_points>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dlib_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'dlib_X))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dlib_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'dlib_Y))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dlib_face_index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'dlib_face_index))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <lm_points>) istream)
  "Deserializes a message object of type '<lm_points>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dlib_X) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dlib_X)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dlib_Y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dlib_Y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dlib_face_index) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dlib_face_index)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<lm_points>)))
  "Returns string type for a message object of type '<lm_points>"
  "dlib_puppeteering/lm_points")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'lm_points)))
  "Returns string type for a message object of type 'lm_points"
  "dlib_puppeteering/lm_points")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<lm_points>)))
  "Returns md5sum for a message object of type '<lm_points>"
  "f16b68aae8c62278ab60e0b515e1cf27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'lm_points)))
  "Returns md5sum for a message object of type 'lm_points"
  "f16b68aae8c62278ab60e0b515e1cf27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<lm_points>)))
  "Returns full string definition for message of type '<lm_points>"
  (cl:format cl:nil "float32[] dlib_X~%float32[] dlib_Y~%int32[] dlib_face_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'lm_points)))
  "Returns full string definition for message of type 'lm_points"
  (cl:format cl:nil "float32[] dlib_X~%float32[] dlib_Y~%int32[] dlib_face_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <lm_points>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dlib_X) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dlib_Y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dlib_face_index) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <lm_points>))
  "Converts a ROS message object to a list"
  (cl:list 'lm_points
    (cl:cons ':dlib_X (dlib_X msg))
    (cl:cons ':dlib_Y (dlib_Y msg))
    (cl:cons ':dlib_face_index (dlib_face_index msg))
))
