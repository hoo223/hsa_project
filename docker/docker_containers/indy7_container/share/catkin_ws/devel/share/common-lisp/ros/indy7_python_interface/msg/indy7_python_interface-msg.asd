
(cl:in-package :asdf)

(defsystem "indy7_python_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Ellipsoid3" :depends-on ("_package_Ellipsoid3"))
    (:file "_package_Ellipsoid3" :depends-on ("_package"))
  ))