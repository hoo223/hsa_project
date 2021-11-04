
(cl:in-package :asdf)

(defsystem "indy7_python_interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SolveIk" :depends-on ("_package_SolveIk"))
    (:file "_package_SolveIk" :depends-on ("_package"))
  ))