;; Auto-generated. Do not edit!


(when (boundp 'ur10_python_interface::SolveIk)
  (if (not (find-package "UR10_PYTHON_INTERFACE"))
    (make-package "UR10_PYTHON_INTERFACE"))
  (shadow 'SolveIk (find-package "UR10_PYTHON_INTERFACE")))
(unless (find-package "UR10_PYTHON_INTERFACE::SOLVEIK")
  (make-package "UR10_PYTHON_INTERFACE::SOLVEIK"))
(unless (find-package "UR10_PYTHON_INTERFACE::SOLVEIKREQUEST")
  (make-package "UR10_PYTHON_INTERFACE::SOLVEIKREQUEST"))
(unless (find-package "UR10_PYTHON_INTERFACE::SOLVEIKRESPONSE")
  (make-package "UR10_PYTHON_INTERFACE::SOLVEIKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur10_python_interface::SolveIkRequest
  :super ros::object
  :slots (_end_pose ))

(defmethod ur10_python_interface::SolveIkRequest
  (:init
   (&key
    ((:end_pose __end_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _end_pose __end_pose)
   self)
  (:end_pose
   (&rest __end_pose)
   (if (keywordp (car __end_pose))
       (send* _end_pose __end_pose)
     (progn
       (if __end_pose (setq _end_pose (car __end_pose)))
       _end_pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _end_pose
    (send _end_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _end_pose
       (send _end_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _end_pose
     (send _end_pose :deserialize buf ptr-) (incf ptr- (send _end_pose :serialization-length))
   ;;
   self)
  )

(defclass ur10_python_interface::SolveIkResponse
  :super ros::object
  :slots (_ik_result _success ))

(defmethod ur10_python_interface::SolveIkResponse
  (:init
   (&key
    ((:ik_result __ik_result) (instance std_msgs::Float64MultiArray :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _ik_result __ik_result)
   (setq _success __success)
   self)
  (:ik_result
   (&rest __ik_result)
   (if (keywordp (car __ik_result))
       (send* _ik_result __ik_result)
     (progn
       (if __ik_result (setq _ik_result (car __ik_result)))
       _ik_result)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64MultiArray _ik_result
    (send _ik_result :serialization-length)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64MultiArray _ik_result
       (send _ik_result :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64MultiArray _ik_result
     (send _ik_result :deserialize buf ptr-) (incf ptr- (send _ik_result :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ur10_python_interface::SolveIk
  :super ros::object
  :slots ())

(setf (get ur10_python_interface::SolveIk :md5sum-) "6580254afbe9e0087fa243dc6fb4dd77")
(setf (get ur10_python_interface::SolveIk :datatype-) "ur10_python_interface/SolveIk")
(setf (get ur10_python_interface::SolveIk :request) ur10_python_interface::SolveIkRequest)
(setf (get ur10_python_interface::SolveIk :response) ur10_python_interface::SolveIkResponse)

(defmethod ur10_python_interface::SolveIkRequest
  (:response () (instance ur10_python_interface::SolveIkResponse :init)))

(setf (get ur10_python_interface::SolveIkRequest :md5sum-) "6580254afbe9e0087fa243dc6fb4dd77")
(setf (get ur10_python_interface::SolveIkRequest :datatype-) "ur10_python_interface/SolveIkRequest")
(setf (get ur10_python_interface::SolveIkRequest :definition-)
      "geometry_msgs/Pose end_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
std_msgs/Float64MultiArray ik_result
bool success


================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")

(setf (get ur10_python_interface::SolveIkResponse :md5sum-) "6580254afbe9e0087fa243dc6fb4dd77")
(setf (get ur10_python_interface::SolveIkResponse :datatype-) "ur10_python_interface/SolveIkResponse")
(setf (get ur10_python_interface::SolveIkResponse :definition-)
      "geometry_msgs/Pose end_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
std_msgs/Float64MultiArray ik_result
bool success


================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")



(provide :ur10_python_interface/SolveIk "6580254afbe9e0087fa243dc6fb4dd77")


