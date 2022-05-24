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

echo_and_run cd "/home/ljy/Sustech_CS401_Final_Project/project_ws/src/turtlebot3_wall_follower"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ljy/Sustech_CS401_Final_Project/project_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ljy/Sustech_CS401_Final_Project/project_ws/install/lib/python3/dist-packages:/home/ljy/Sustech_CS401_Final_Project/project_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ljy/Sustech_CS401_Final_Project/project_ws/build" \
    "/usr/bin/python3" \
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/src/turtlebot3_wall_follower/setup.py" \
     \
    build --build-base "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ljy/Sustech_CS401_Final_Project/project_ws/install" --install-scripts="/home/ljy/Sustech_CS401_Final_Project/project_ws/install/bin"
