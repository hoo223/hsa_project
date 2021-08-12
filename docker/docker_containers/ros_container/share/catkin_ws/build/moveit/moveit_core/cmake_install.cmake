# Install script for directory: /root/share/catkin_ws/src/moveit/moveit_core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/share/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/root/share/catkin_ws/build/moveit/moveit_core/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/share/catkin_ws/build/moveit/moveit_core/catkin_generated/installspace/moveit_core.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_core/cmake" TYPE FILE FILES
    "/root/share/catkin_ws/build/moveit/moveit_core/catkin_generated/installspace/moveit_coreConfig.cmake"
    "/root/share/catkin_ws/build/moveit/moveit_core/catkin_generated/installspace/moveit_coreConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moveit_core" TYPE FILE FILES "/root/share/catkin_ws/src/moveit/moveit_core/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/moveit" TYPE FILE FILES "/root/share/catkin_ws/devel/include/moveit/version.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/pymoveit_core.cpython-38-x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/pymoveit_core.cpython-38-x86_64-linux-gnu.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/pymoveit_core.cpython-38-x86_64-linux-gnu.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE MODULE FILES "/root/share/catkin_ws/devel/lib/python3/dist-packages/pymoveit_core.cpython-38-x86_64-linux-gnu.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/pymoveit_core.cpython-38-x86_64-linux-gnu.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/pymoveit_core.cpython-38-x86_64-linux-gnu.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/pymoveit_core.cpython-38-x86_64-linux-gnu.so"
         OLD_RPATH "/root/share/catkin_ws/devel/lib:/opt/ros/noetic/lib:/opt/ros/noetic/lib/x86_64-linux-gnu:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/pymoveit_core.cpython-38-x86_64-linux-gnu.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/share/catkin_ws/build/moveit/moveit_core/version/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/macros/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/backtrace/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/exceptions/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/profiler/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/utils/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/background_processing/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/kinematics_base/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/controller_manager/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/sensor_manager/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/robot_model/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/transforms/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/robot_state/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/robot_trajectory/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/collision_detection/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/collision_detection_fcl/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/kinematic_constraints/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/planning_scene/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/constraint_samplers/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/planning_interface/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/planning_request_adapter/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/trajectory_processing/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/distance_field/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/collision_distance_field/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/kinematics_metrics/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/dynamics_solver/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/python/cmake_install.cmake")
  include("/root/share/catkin_ws/build/moveit/moveit_core/collision_detection_bullet/cmake_install.cmake")

endif()

