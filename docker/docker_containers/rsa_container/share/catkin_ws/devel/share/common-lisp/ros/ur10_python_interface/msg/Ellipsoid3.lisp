; Auto-generated. Do not edit!


(cl:in-package ur10_python_interface-msg)


;//! \htmlinclude Ellipsoid3.msg.html

(cl:defclass <Ellipsoid3> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (u1
    :reader u1
    :initarg :u1
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (u2
    :reader u2
    :initarg :u2
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (u3
    :reader u3
    :initarg :u3
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray)))
)

(cl:defclass Ellipsoid3 (<Ellipsoid3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ellipsoid3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ellipsoid3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur10_python_interface-msg:<Ellipsoid3> is deprecated: use ur10_python_interface-msg:Ellipsoid3 instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <Ellipsoid3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur10_python_interface-msg:s-val is deprecated.  Use ur10_python_interface-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'u1-val :lambda-list '(m))
(cl:defmethod u1-val ((m <Ellipsoid3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur10_python_interface-msg:u1-val is deprecated.  Use ur10_python_interface-msg:u1 instead.")
  (u1 m))

(cl:ensure-generic-function 'u2-val :lambda-list '(m))
(cl:defmethod u2-val ((m <Ellipsoid3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur10_python_interface-msg:u2-val is deprecated.  Use ur10_python_interface-msg:u2 instead.")
  (u2 m))

(cl:ensure-generic-function 'u3-val :lambda-list '(m))
(cl:defmethod u3-val ((m <Ellipsoid3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur10_python_interface-msg:u3-val is deprecated.  Use ur10_python_interface-msg:u3 instead.")
  (u3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ellipsoid3>) ostream)
  "Serializes a message object of type '<Ellipsoid3>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 's) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'u1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'u2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'u3) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ellipsoid3>) istream)
  "Deserializes a message object of type '<Ellipsoid3>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 's) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'u1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'u2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'u3) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ellipsoid3>)))
  "Returns string type for a message object of type '<Ellipsoid3>"
  "ur10_python_interface/Ellipsoid3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ellipsoid3)))
  "Returns string type for a message object of type 'Ellipsoid3"
  "ur10_python_interface/Ellipsoid3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ellipsoid3>)))
  "Returns md5sum for a message object of type '<Ellipsoid3>"
  "9f6cdfc239b63a10b9b7c1e0e31d582b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ellipsoid3)))
  "Returns md5sum for a message object of type 'Ellipsoid3"
  "9f6cdfc239b63a10b9b7c1e0e31d582b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ellipsoid3>)))
  "Returns full string definition for message of type '<Ellipsoid3>"
  (cl:format cl:nil "std_msgs/Float64MultiArray s~%std_msgs/Float64MultiArray u1~%std_msgs/Float64MultiArray u2~%std_msgs/Float64MultiArray u3~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ellipsoid3)))
  "Returns full string definition for message of type 'Ellipsoid3"
  (cl:format cl:nil "std_msgs/Float64MultiArray s~%std_msgs/Float64MultiArray u1~%std_msgs/Float64MultiArray u2~%std_msgs/Float64MultiArray u3~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ellipsoid3>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 's))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'u1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'u2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'u3))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ellipsoid3>))
  "Converts a ROS message object to a list"
  (cl:list 'Ellipsoid3
    (cl:cons ':s (s msg))
    (cl:cons ':u1 (u1 msg))
    (cl:cons ':u2 (u2 msg))
    (cl:cons ':u3 (u3 msg))
))
