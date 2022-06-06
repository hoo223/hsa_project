;; Auto-generated. Do not edit!


(when (boundp 'workspace_trajectory_msgs::WorkspaceTrajectory)
  (if (not (find-package "WORKSPACE_TRAJECTORY_MSGS"))
    (make-package "WORKSPACE_TRAJECTORY_MSGS"))
  (shadow 'WorkspaceTrajectory (find-package "WORKSPACE_TRAJECTORY_MSGS")))
(unless (find-package "WORKSPACE_TRAJECTORY_MSGS::WORKSPACETRAJECTORY")
  (make-package "WORKSPACE_TRAJECTORY_MSGS::WORKSPACETRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude WorkspaceTrajectory.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass workspace_trajectory_msgs::WorkspaceTrajectory
  :super ros::object
  :slots (_name _waypoints _wrenches _timestamps ))

(defmethod workspace_trajectory_msgs::WorkspaceTrajectory
  (:init
   (&key
    ((:name __name) "")
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:wrenches __wrenches) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Wrench :init) r)) r))
    ((:timestamps __timestamps) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _waypoints __waypoints)
   (setq _wrenches __wrenches)
   (setq _timestamps __timestamps)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:wrenches
   (&rest __wrenches)
   (if (keywordp (car __wrenches))
       (send* _wrenches __wrenches)
     (progn
       (if __wrenches (setq _wrenches (car __wrenches)))
       _wrenches)))
  (:timestamps
   (&optional __timestamps)
   (if __timestamps (setq _timestamps __timestamps)) _timestamps)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Pose[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; geometry_msgs/Wrench[] _wrenches
    (apply #'+ (send-all _wrenches :serialization-length)) 4
    ;; float64[] _timestamps
    (* 8    (length _timestamps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Pose[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Wrench[] _wrenches
     (write-long (length _wrenches) s)
     (dolist (elem _wrenches)
       (send elem :serialize s)
       )
     ;; float64[] _timestamps
     (write-long (length _timestamps) s)
     (dotimes (i (length _timestamps))
       (sys::poke (elt _timestamps i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Wrench[] _wrenches
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wrenches (let (r) (dotimes (i n) (push (instance geometry_msgs::Wrench :init) r)) r))
     (dolist (elem- _wrenches)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _timestamps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timestamps (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _timestamps i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get workspace_trajectory_msgs::WorkspaceTrajectory :md5sum-) "fe85e09bed1ee10e23a32888d54b9372")
(setf (get workspace_trajectory_msgs::WorkspaceTrajectory :datatype-) "workspace_trajectory_msgs/WorkspaceTrajectory")
(setf (get workspace_trajectory_msgs::WorkspaceTrajectory :definition-)
      "string name
geometry_msgs/Pose[] waypoints
geometry_msgs/Wrench[] wrenches
float64[] timestamps

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
")



(provide :workspace_trajectory_msgs/WorkspaceTrajectory "fe85e09bed1ee10e23a32888d54b9372")


