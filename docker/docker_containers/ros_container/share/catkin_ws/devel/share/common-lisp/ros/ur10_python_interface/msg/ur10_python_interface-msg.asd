
(cl:in-package :asdf)

(defsystem "ur10_python_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Ellipsoid3" :depends-on ("_package_Ellipsoid3"))
    (:file "_package_Ellipsoid3" :depends-on ("_package"))
    (:file "Robotiq2FGripper_robot_input" :depends-on ("_package_Robotiq2FGripper_robot_input"))
    (:file "_package_Robotiq2FGripper_robot_input" :depends-on ("_package"))
    (:file "Robotiq2FGripper_robot_output" :depends-on ("_package_Robotiq2FGripper_robot_output"))
    (:file "_package_Robotiq2FGripper_robot_output" :depends-on ("_package"))
  ))