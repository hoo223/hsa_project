#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/root/share/catkin_ws/src/real/fmauch_universal_robot/ur_kinematics"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/root/share/catkin_ws/install_isolated/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/root/share/catkin_ws/install_isolated/lib/python3/dist-packages:/root/share/catkin_ws/build_isolated/ur_kinematics/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/root/share/catkin_ws/build_isolated/ur_kinematics" \
    "/usr/bin/python3" \
    "/root/share/catkin_ws/src/real/fmauch_universal_robot/ur_kinematics/setup.py" \
     \
    build --build-base "/root/share/catkin_ws/build_isolated/ur_kinematics" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/root/share/catkin_ws/install_isolated" --install-scripts="/root/share/catkin_ws/install_isolated/bin"
