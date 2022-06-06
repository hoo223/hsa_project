; Auto-generated. Do not edit!


(cl:in-package acg_control_msg-msg)


;//! \htmlinclude FollowWorkspaceTrajectoryFeedback.msg.html

(cl:defclass <FollowWorkspaceTrajectoryFeedback> (roslisp-msg-protocol:ros-message)
  ((desired_pose
    :reader desired_pose
    :initarg :desired_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (desired_wrench
    :reader desired_wrench
    :initarg :desired_wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (actual_pose
    :reader actual_pose
    :initarg :actual_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (actual_wrench
    :reader actual_wrench
    :initarg :actual_wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (error_pose
    :reader error_pose
    :initarg :error_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (error_wrench
    :reader error_wrench
    :initarg :error_wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (time_from_start
    :reader time_from_start
    :initarg :time_from_start
    :type std_msgs-msg:Duration
    :initform (cl:make-instance 'std_msgs-msg:Duration)))
)

(cl:defclass FollowWorkspaceTrajectoryFeedback (<FollowWorkspaceTrajectoryFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowWorkspaceTrajectoryFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowWorkspaceTrajectoryFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acg_control_msg-msg:<FollowWorkspaceTrajectoryFeedback> is deprecated: use acg_control_msg-msg:FollowWorkspaceTrajectoryFeedback instead.")))

(cl:ensure-generic-function 'desired_pose-val :lambda-list '(m))
(cl:defmethod desired_pose-val ((m <FollowWorkspaceTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acg_control_msg-msg:desired_pose-val is deprecated.  Use acg_control_msg-msg:desired_pose instead.")
  (desired_pose m))

(cl:ensure-generic-function 'desired_wrench-val :lambda-list '(m))
(cl:defmethod desired_wrench-val ((m <FollowWorkspaceTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acg_control_msg-msg:desired_wrench-val is deprecated.  Use acg_control_msg-msg:desired_wrench instead.")
  (desired_wrench m))

(cl:ensure-generic-function 'actual_pose-val :lambda-list '(m))
(cl:defmethod actual_pose-val ((m <FollowWorkspaceTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acg_control_msg-msg:actual_pose-val is deprecated.  Use acg_control_msg-msg:actual_pose instead.")
  (actual_pose m))

(cl:ensure-generic-function 'actual_wrench-val :lambda-list '(m))
(cl:defmethod actual_wrench-val ((m <FollowWorkspaceTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acg_control_msg-msg:actual_wrench-val is deprecated.  Use acg_control_msg-msg:actual_wrench instead.")
  (actual_wrench m))

(cl:ensure-generic-function 'error_pose-val :lambda-list '(m))
(cl:defmethod error_pose-val ((m <FollowWorkspaceTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acg_control_msg-msg:error_pose-val is deprecated.  Use acg_control_msg-msg:error_pose instead.")
  (error_pose m))

(cl:ensure-generic-function 'error_wrench-val :lambda-list '(m))
(cl:defmethod error_wrench-val ((m <FollowWorkspaceTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acg_control_msg-msg:error_wrench-val is deprecated.  Use acg_control_msg-msg:error_wrench instead.")
  (error_wrench m))

(cl:ensure-generic-function 'time_from_start-val :lambda-list '(m))
(cl:defmethod time_from_start-val ((m <FollowWorkspaceTrajectoryFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acg_control_msg-msg:time_from_start-val is deprecated.  Use acg_control_msg-msg:time_from_start instead.")
  (time_from_start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowWorkspaceTrajectoryFeedback>) ostream)
  "Serializes a message object of type '<FollowWorkspaceTrajectoryFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired_wrench) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual_wrench) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_wrench) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time_from_start) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowWorkspaceTrajectoryFeedback>) istream)
  "Deserializes a message object of type '<FollowWorkspaceTrajectoryFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired_wrench) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual_wrench) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_wrench) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time_from_start) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowWorkspaceTrajectoryFeedback>)))
  "Returns string type for a message object of type '<FollowWorkspaceTrajectoryFeedback>"
  "acg_control_msg/FollowWorkspaceTrajectoryFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowWorkspaceTrajectoryFeedback)))
  "Returns string type for a message object of type 'FollowWorkspaceTrajectoryFeedback"
  "acg_control_msg/FollowWorkspaceTrajectoryFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowWorkspaceTrajectoryFeedback>)))
  "Returns md5sum for a message object of type '<FollowWorkspaceTrajectoryFeedback>"
  "ced1f6e4a7e2d4e812288f7a9f1b6e62")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowWorkspaceTrajectoryFeedback)))
  "Returns md5sum for a message object of type 'FollowWorkspaceTrajectoryFeedback"
  "ced1f6e4a7e2d4e812288f7a9f1b6e62")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowWorkspaceTrajectoryFeedback>)))
  "Returns full string definition for message of type '<FollowWorkspaceTrajectoryFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/Pose desired_pose~%geometry_msgs/Wrench desired_wrench~%geometry_msgs/Pose actual_pose~%geometry_msgs/Wrench actual_wrench~%geometry_msgs/Pose error_pose~%geometry_msgs/Wrench error_wrench~%std_msgs/Duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowWorkspaceTrajectoryFeedback)))
  "Returns full string definition for message of type 'FollowWorkspaceTrajectoryFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%geometry_msgs/Pose desired_pose~%geometry_msgs/Wrench desired_wrench~%geometry_msgs/Pose actual_pose~%geometry_msgs/Wrench actual_wrench~%geometry_msgs/Pose error_pose~%geometry_msgs/Wrench error_wrench~%std_msgs/Duration time_from_start~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowWorkspaceTrajectoryFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired_wrench))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual_wrench))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_wrench))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time_from_start))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowWorkspaceTrajectoryFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowWorkspaceTrajectoryFeedback
    (cl:cons ':desired_pose (desired_pose msg))
    (cl:cons ':desired_wrench (desired_wrench msg))
    (cl:cons ':actual_pose (actual_pose msg))
    (cl:cons ':actual_wrench (actual_wrench msg))
    (cl:cons ':error_pose (error_pose msg))
    (cl:cons ':error_wrench (error_wrench msg))
    (cl:cons ':time_from_start (time_from_start msg))
))
