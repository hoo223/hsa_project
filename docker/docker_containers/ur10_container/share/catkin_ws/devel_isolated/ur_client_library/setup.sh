#!/usr/bin/env sh
# generated from catkin.builder Python module

# remember type of shell if not already set
if [ -z "$CATKIN_SHELL" ]; then
  CATKIN_SHELL=sh
fi
. "/root/share/catkin_ws/devel_isolated/universal_robots/setup.$CATKIN_SHELL"

# detect if running on Darwin platform
_UNAME=`uname -s`
IS_DARWIN=0
if [ "$_UNAME" = "Darwin" ]; then
  IS_DARWIN=1
fi

# Prepend to the environment
export CMAKE_PREFIX_PATH="/root/share/catkin_ws/devel_isolated/ur_client_library:$CMAKE_PREFIX_PATH"
if [ $IS_DARWIN -eq 0 ]; then
  export LD_LIBRARY_PATH="/root/share/catkin_ws/devel_isolated/ur_client_library/lib:/root/share/catkin_ws/devel_isolated/ur_client_library/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"
else
  export DYLD_LIBRARY_PATH="/root/share/catkin_ws/devel_isolated/ur_client_library/lib:/root/share/catkin_ws/devel_isolated/ur_client_library/lib/x86_64-linux-gnu:$DYLD_LIBRARY_PATH"
fi
export PATH="/root/share/catkin_ws/devel_isolated/ur_client_library/bin:$PATH"
export PKG_CONFIG_PATH="/root/share/catkin_ws/devel_isolated/ur_client_library/lib/pkgconfig:/root/share/catkin_ws/devel_isolated/ur_client_library/lib/x86_64-linux-gnu/pkgconfig:$PKG_CONFIG_PATH"
export PYTHONPATH="/root/share/catkin_ws/devel_isolated/ur_client_library/lib/python3/dist-packages:$PYTHONPATH"
