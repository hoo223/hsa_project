;; Auto-generated. Do not edit!


(when (boundp 'ur10_python_interface::Ellipsoid3)
  (if (not (find-package "UR10_PYTHON_INTERFACE"))
    (make-package "UR10_PYTHON_INTERFACE"))
  (shadow 'Ellipsoid3 (find-package "UR10_PYTHON_INTERFACE")))
(unless (find-package "UR10_PYTHON_INTERFACE::ELLIPSOID3")
  (make-package "UR10_PYTHON_INTERFACE::ELLIPSOID3"))

(in-package "ROS")
;;//! \htmlinclude Ellipsoid3.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ur10_python_interface::Ellipsoid3
  :super ros::object
  :slots (_s _u1 _u2 _u3 ))

(defmethod ur10_python_interface::Ellipsoid3
  (:init
   (&key
    ((:s __s) (instance std_msgs::Float64MultiArray :init))
    ((:u1 __u1) (instance std_msgs::Float64MultiArray :init))
    ((:u2 __u2) (instance std_msgs::Float64MultiArray :init))
    ((:u3 __u3) (instance std_msgs::Float64MultiArray :init))
    )
   (send-super :init)
   (setq _s __s)
   (setq _u1 __u1)
   (setq _u2 __u2)
   (setq _u3 __u3)
   self)
  (:s
   (&rest __s)
   (if (keywordp (car __s))
       (send* _s __s)
     (progn
       (if __s (setq _s (car __s)))
       _s)))
  (:u1
   (&rest __u1)
   (if (keywordp (car __u1))
       (send* _u1 __u1)
     (progn
       (if __u1 (setq _u1 (car __u1)))
       _u1)))
  (:u2
   (&rest __u2)
   (if (keywordp (car __u2))
       (send* _u2 __u2)
     (progn
       (if __u2 (setq _u2 (car __u2)))
       _u2)))
  (:u3
   (&rest __u3)
   (if (keywordp (car __u3))
       (send* _u3 __u3)
     (progn
       (if __u3 (setq _u3 (car __u3)))
       _u3)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64MultiArray _s
    (send _s :serialization-length)
    ;; std_msgs/Float64MultiArray _u1
    (send _u1 :serialization-length)
    ;; std_msgs/Float64MultiArray _u2
    (send _u2 :serialization-length)
    ;; std_msgs/Float64MultiArray _u3
    (send _u3 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64MultiArray _s
       (send _s :serialize s)
     ;; std_msgs/Float64MultiArray _u1
       (send _u1 :serialize s)
     ;; std_msgs/Float64MultiArray _u2
       (send _u2 :serialize s)
     ;; std_msgs/Float64MultiArray _u3
       (send _u3 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64MultiArray _s
     (send _s :deserialize buf ptr-) (incf ptr- (send _s :serialization-length))
   ;; std_msgs/Float64MultiArray _u1
     (send _u1 :deserialize buf ptr-) (incf ptr- (send _u1 :serialization-length))
   ;; std_msgs/Float64MultiArray _u2
     (send _u2 :deserialize buf ptr-) (incf ptr- (send _u2 :serialization-length))
   ;; std_msgs/Float64MultiArray _u3
     (send _u3 :deserialize buf ptr-) (incf ptr- (send _u3 :serialization-length))
   ;;
   self)
  )

(setf (get ur10_python_interface::Ellipsoid3 :md5sum-) "9f6cdfc239b63a10b9b7c1e0e31d582b")
(setf (get ur10_python_interface::Ellipsoid3 :datatype-) "ur10_python_interface/Ellipsoid3")
(setf (get ur10_python_interface::Ellipsoid3 :definition-)
      "std_msgs/Float64MultiArray s
std_msgs/Float64MultiArray u1
std_msgs/Float64MultiArray u2
std_msgs/Float64MultiArray u3
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
uint32 stride  # stride of given dimension
")



(provide :ur10_python_interface/Ellipsoid3 "9f6cdfc239b63a10b9b7c1e0e31d582b")


