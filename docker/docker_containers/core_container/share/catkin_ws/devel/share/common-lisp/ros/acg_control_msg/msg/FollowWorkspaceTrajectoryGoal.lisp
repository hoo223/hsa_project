; Auto-generated. Do not edit!


(cl:in-package acg_control_msg-msg)


;//! \htmlinclude FollowWorkspaceTrajectoryGoal.msg.html

(cl:defclass <FollowWorkspaceTrajectoryGoal> (roslisp-msg-protocol:ros-message)
  ((workspace_trajectory
    :reader workspace_trajectory
    :initarg :workspace_trajectory
    :type workspace_trajectory_msgs-msg:WorkspaceTrajectory
    :initform (cl:make-instance 'workspace_trajectory_msgs-msg:WorkspaceTrajectory)))
)

(cl:defclass FollowWorkspaceTrajectoryGoal (<FollowWorkspaceTrajectoryGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowWorkspaceTrajectoryGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowWorkspaceTrajectoryGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name acg_control_msg-msg:<FollowWorkspaceTrajectoryGoal> is deprecated: use acg_control_msg-msg:FollowWorkspaceTrajectoryGoal instead.")))

(cl:ensure-generic-function 'workspace_trajectory-val :lambda-list '(m))
(cl:defmethod workspace_trajectory-val ((m <FollowWorkspaceTrajectoryGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader acg_control_msg-msg:workspace_trajectory-val is deprecated.  Use acg_control_msg-msg:workspace_trajectory instead.")
  (workspace_trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowWorkspaceTrajectoryGoal>) ostream)
  "Serializes a message object of type '<FollowWorkspaceTrajectoryGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'workspace_trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowWorkspaceTrajectoryGoal>) istream)
  "Deserializes a message object of type '<FollowWorkspaceTrajectoryGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'workspace_trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowWorkspaceTrajectoryGoal>)))
  "Returns string type for a message object of type '<FollowWorkspaceTrajectoryGoal>"
  "acg_control_msg/FollowWorkspaceTrajectoryGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowWorkspaceTrajectoryGoal)))
  "Returns string type for a message object of type 'FollowWorkspaceTrajectoryGoal"
  "acg_control_msg/FollowWorkspaceTrajectoryGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowWorkspaceTrajectoryGoal>)))
  "Returns md5sum for a message object of type '<FollowWorkspaceTrajectoryGoal>"
  "53f9d0acedeba6e6691b2971b0a93f25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowWorkspaceTrajectoryGoal)))
  "Returns md5sum for a message object of type 'FollowWorkspaceTrajectoryGoal"
  "53f9d0acedeba6e6691b2971b0a93f25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowWorkspaceTrajectoryGoal>)))
  "Returns full string definition for message of type '<FollowWorkspaceTrajectoryGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%workspace_trajectory_msgs/WorkspaceTrajectory workspace_trajectory~%~%================================================================================~%MSG: workspace_trajectory_msgs/WorkspaceTrajectory~%string name~%geometry_msgs/Pose[] waypoints~%geometry_msgs/Wrench[] wrenches~%float64[] timestamps~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowWorkspaceTrajectoryGoal)))
  "Returns full string definition for message of type 'FollowWorkspaceTrajectoryGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%workspace_trajectory_msgs/WorkspaceTrajectory workspace_trajectory~%~%================================================================================~%MSG: workspace_trajectory_msgs/WorkspaceTrajectory~%string name~%geometry_msgs/Pose[] waypoints~%geometry_msgs/Wrench[] wrenches~%float64[] timestamps~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, separated into~%# its linear and angular parts.~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowWorkspaceTrajectoryGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'workspace_trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowWorkspaceTrajectoryGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowWorkspaceTrajectoryGoal
    (cl:cons ':workspace_trajectory (workspace_trajectory msg))
))
