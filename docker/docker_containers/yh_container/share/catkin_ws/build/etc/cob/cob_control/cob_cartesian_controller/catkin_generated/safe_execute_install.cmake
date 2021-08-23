execute_process(COMMAND "/root/share/catkin_ws/build/etc/cob/cob_control/cob_cartesian_controller/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/root/share/catkin_ws/build/etc/cob/cob_control/cob_cartesian_controller/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
