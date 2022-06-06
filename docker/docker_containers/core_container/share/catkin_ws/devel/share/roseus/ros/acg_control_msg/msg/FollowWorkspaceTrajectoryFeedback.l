;; Auto-generated. Do not edit!


(when (boundp 'acg_control_msg::FollowWorkspaceTrajectoryFeedback)
  (if (not (find-package "ACG_CONTROL_MSG"))
    (make-package "ACG_CONTROL_MSG"))
  (shadow 'FollowWorkspaceTrajectoryFeedback (find-package "ACG_CONTROL_MSG")))
(unless (find-package "ACG_CONTROL_MSG::FOLLOWWORKSPACETRAJECTORYFEEDBACK")
  (make-package "ACG_CONTROL_MSG::FOLLOWWORKSPACETRAJECTORYFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude FollowWorkspaceTrajectoryFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass acg_control_msg::FollowWorkspaceTrajectoryFeedback
  :super ros::object
  :slots (_desired_pose _desired_wrench _actual_pose _actual_wrench _error_pose _error_wrench _time_from_start ))

(defmethod acg_control_msg::FollowWorkspaceTrajectoryFeedback
  (:init
   (&key
    ((:desired_pose __desired_pose) (instance geometry_msgs::Pose :init))
    ((:desired_wrench __desired_wrench) (instance geometry_msgs::Wrench :init))
    ((:actual_pose __actual_pose) (instance geometry_msgs::Pose :init))
    ((:actual_wrench __actual_wrench) (instance geometry_msgs::Wrench :init))
    ((:error_pose __error_pose) (instance geometry_msgs::Pose :init))
    ((:error_wrench __error_wrench) (instance geometry_msgs::Wrench :init))
    ((:time_from_start __time_from_start) (instance std_msgs::Duration :init))
    )
   (send-super :init)
   (setq _desired_pose __desired_pose)
   (setq _desired_wrench __desired_wrench)
   (setq _actual_pose __actual_pose)
   (setq _actual_wrench __actual_wrench)
   (setq _error_pose __error_pose)
   (setq _error_wrench __error_wrench)
   (setq _time_from_start __time_from_start)
   self)
  (:desired_pose
   (&rest __desired_pose)
   (if (keywordp (car __desired_pose))
       (send* _desired_pose __desired_pose)
     (progn
       (if __desired_pose (setq _desired_pose (car __desired_pose)))
       _desired_pose)))
  (:desired_wrench
   (&rest __desired_wrench)
   (if (keywordp (car __desired_wrench))
       (send* _desired_wrench __desired_wrench)
     (progn
       (if __desired_wrench (setq _desired_wrench (car __desired_wrench)))
       _desired_wrench)))
  (:actual_pose
   (&rest __actual_pose)
   (if (keywordp (car __actual_pose))
       (send* _actual_pose __actual_pose)
     (progn
       (if __actual_pose (setq _actual_pose (car __actual_pose)))
       _actual_pose)))
  (:actual_wrench
   (&rest __actual_wrench)
   (if (keywordp (car __actual_wrench))
       (send* _actual_wrench __actual_wrench)
     (progn
       (if __actual_wrench (setq _actual_wrench (car __actual_wrench)))
       _actual_wrench)))
  (:error_pose
   (&rest __error_pose)
   (if (keywordp (car __error_pose))
       (send* _error_pose __error_pose)
     (progn
       (if __error_pose (setq _error_pose (car __error_pose)))
       _error_pose)))
  (:error_wrench
   (&rest __error_wrench)
   (if (keywordp (car __error_wrench))
       (send* _error_wrench __error_wrench)
     (progn
       (if __error_wrench (setq _error_wrench (car __error_wrench)))
       _error_wrench)))
  (:time_from_start
   (&rest __time_from_start)
   (if (keywordp (car __time_from_start))
       (send* _time_from_start __time_from_start)
     (progn
       (if __time_from_start (setq _time_from_start (car __time_from_start)))
       _time_from_start)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _desired_pose
    (send _desired_pose :serialization-length)
    ;; geometry_msgs/Wrench _desired_wrench
    (send _desired_wrench :serialization-length)
    ;; geometry_msgs/Pose _actual_pose
    (send _actual_pose :serialization-length)
    ;; geometry_msgs/Wrench _actual_wrench
    (send _actual_wrench :serialization-length)
    ;; geometry_msgs/Pose _error_pose
    (send _error_pose :serialization-length)
    ;; geometry_msgs/Wrench _error_wrench
    (send _error_wrench :serialization-length)
    ;; std_msgs/Duration _time_from_start
    (send _time_from_start :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _desired_pose
       (send _desired_pose :serialize s)
     ;; geometry_msgs/Wrench _desired_wrench
       (send _desired_wrench :serialize s)
     ;; geometry_msgs/Pose _actual_pose
       (send _actual_pose :serialize s)
     ;; geometry_msgs/Wrench _actual_wrench
       (send _actual_wrench :serialize s)
     ;; geometry_msgs/Pose _error_pose
       (send _error_pose :serialize s)
     ;; geometry_msgs/Wrench _error_wrench
       (send _error_wrench :serialize s)
     ;; std_msgs/Duration _time_from_start
       (send _time_from_start :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _desired_pose
     (send _desired_pose :deserialize buf ptr-) (incf ptr- (send _desired_pose :serialization-length))
   ;; geometry_msgs/Wrench _desired_wrench
     (send _desired_wrench :deserialize buf ptr-) (incf ptr- (send _desired_wrench :serialization-length))
   ;; geometry_msgs/Pose _actual_pose
     (send _actual_pose :deserialize buf ptr-) (incf ptr- (send _actual_pose :serialization-length))
   ;; geometry_msgs/Wrench _actual_wrench
     (send _actual_wrench :deserialize buf ptr-) (incf ptr- (send _actual_wrench :serialization-length))
   ;; geometry_msgs/Pose _error_pose
     (send _error_pose :deserialize buf ptr-) (incf ptr- (send _error_pose :serialization-length))
   ;; geometry_msgs/Wrench _error_wrench
     (send _error_wrench :deserialize buf ptr-) (incf ptr- (send _error_wrench :serialization-length))
   ;; std_msgs/Duration _time_from_start
     (send _time_from_start :deserialize buf ptr-) (incf ptr- (send _time_from_start :serialization-length))
   ;;
   self)
  )

(setf (get acg_control_msg::FollowWorkspaceTrajectoryFeedback :md5sum-) "ced1f6e4a7e2d4e812288f7a9f1b6e62")
(setf (get acg_control_msg::FollowWorkspaceTrajectoryFeedback :datatype-) "acg_control_msg/FollowWorkspaceTrajectoryFeedback")
(setf (get acg_control_msg::FollowWorkspaceTrajectoryFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
geometry_msgs/Pose desired_pose
geometry_msgs/Wrench desired_wrench
geometry_msgs/Pose actual_pose
geometry_msgs/Wrench actual_wrench
geometry_msgs/Pose error_pose
geometry_msgs/Wrench error_wrench
std_msgs/Duration time_from_start

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

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/Duration
duration data

")



(provide :acg_control_msg/FollowWorkspaceTrajectoryFeedback "ced1f6e4a7e2d4e812288f7a9f1b6e62")


