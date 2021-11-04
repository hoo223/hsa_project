; Auto-generated. Do not edit!


(cl:in-package indy7_python_interface-srv)


;//! \htmlinclude SolveIk-request.msg.html

(cl:defclass <SolveIk-request> (roslisp-msg-protocol:ros-message)
  ((end_pose
    :reader end_pose
    :initarg :end_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SolveIk-request (<SolveIk-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SolveIk-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SolveIk-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name indy7_python_interface-srv:<SolveIk-request> is deprecated: use indy7_python_interface-srv:SolveIk-request instead.")))

(cl:ensure-generic-function 'end_pose-val :lambda-list '(m))
(cl:defmethod end_pose-val ((m <SolveIk-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy7_python_interface-srv:end_pose-val is deprecated.  Use indy7_python_interface-srv:end_pose instead.")
  (end_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SolveIk-request>) ostream)
  "Serializes a message object of type '<SolveIk-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SolveIk-request>) istream)
  "Deserializes a message object of type '<SolveIk-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SolveIk-request>)))
  "Returns string type for a service object of type '<SolveIk-request>"
  "indy7_python_interface/SolveIkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolveIk-request)))
  "Returns string type for a service object of type 'SolveIk-request"
  "indy7_python_interface/SolveIkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SolveIk-request>)))
  "Returns md5sum for a message object of type '<SolveIk-request>"
  "6580254afbe9e0087fa243dc6fb4dd77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SolveIk-request)))
  "Returns md5sum for a message object of type 'SolveIk-request"
  "6580254afbe9e0087fa243dc6fb4dd77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SolveIk-request>)))
  "Returns full string definition for message of type '<SolveIk-request>"
  (cl:format cl:nil "geometry_msgs/Pose end_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SolveIk-request)))
  "Returns full string definition for message of type 'SolveIk-request"
  (cl:format cl:nil "geometry_msgs/Pose end_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SolveIk-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SolveIk-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SolveIk-request
    (cl:cons ':end_pose (end_pose msg))
))
;//! \htmlinclude SolveIk-response.msg.html

(cl:defclass <SolveIk-response> (roslisp-msg-protocol:ros-message)
  ((ik_result
    :reader ik_result
    :initarg :ik_result
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SolveIk-response (<SolveIk-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SolveIk-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SolveIk-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name indy7_python_interface-srv:<SolveIk-response> is deprecated: use indy7_python_interface-srv:SolveIk-response instead.")))

(cl:ensure-generic-function 'ik_result-val :lambda-list '(m))
(cl:defmethod ik_result-val ((m <SolveIk-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy7_python_interface-srv:ik_result-val is deprecated.  Use indy7_python_interface-srv:ik_result instead.")
  (ik_result m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SolveIk-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader indy7_python_interface-srv:success-val is deprecated.  Use indy7_python_interface-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SolveIk-response>) ostream)
  "Serializes a message object of type '<SolveIk-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ik_result) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SolveIk-response>) istream)
  "Deserializes a message object of type '<SolveIk-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ik_result) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SolveIk-response>)))
  "Returns string type for a service object of type '<SolveIk-response>"
  "indy7_python_interface/SolveIkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolveIk-response)))
  "Returns string type for a service object of type 'SolveIk-response"
  "indy7_python_interface/SolveIkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SolveIk-response>)))
  "Returns md5sum for a message object of type '<SolveIk-response>"
  "6580254afbe9e0087fa243dc6fb4dd77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SolveIk-response)))
  "Returns md5sum for a message object of type 'SolveIk-response"
  "6580254afbe9e0087fa243dc6fb4dd77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SolveIk-response>)))
  "Returns full string definition for message of type '<SolveIk-response>"
  (cl:format cl:nil "std_msgs/Float64MultiArray ik_result~%bool success~%~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SolveIk-response)))
  "Returns full string definition for message of type 'SolveIk-response"
  (cl:format cl:nil "std_msgs/Float64MultiArray ik_result~%bool success~%~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SolveIk-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ik_result))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SolveIk-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SolveIk-response
    (cl:cons ':ik_result (ik_result msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SolveIk)))
  'SolveIk-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SolveIk)))
  'SolveIk-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SolveIk)))
  "Returns string type for a service object of type '<SolveIk>"
  "indy7_python_interface/SolveIk")