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

echo_and_run cd "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/root/share/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/root/share/catkin_ws/install/lib/python3/dist-packages:/root/share/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/root/share/catkin_ws/build" \
    "/usr/bin/python3" \
    "/root/share/catkin_ws/src/etc/cob/cob_command_tools/cob_script_server/setup.py" \
     \
    build --build-base "/root/share/catkin_ws/build/etc/cob/cob_command_tools/cob_script_server" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/root/share/catkin_ws/install" --install-scripts="/root/share/catkin_ws/install/bin"
