# Install script for directory: /home/ljy/Sustech_CS401_Final_Project/project_ws/src/turtlebot3_wall_follower

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ljy/Sustech_CS401_Final_Project/project_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  include("/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_wall_follower/action" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/src/turtlebot3_wall_follower/action/Start.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_wall_follower/msg" TYPE FILE FILES
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_wall_follower/cmake" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower/catkin_generated/installspace/turtlebot3_wall_follower-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/include/turtlebot3_wall_follower")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/roseus/ros/turtlebot3_wall_follower")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/common-lisp/ros/turtlebot3_wall_follower")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/gennodejs/ros/turtlebot3_wall_follower")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/lib/python3/dist-packages/turtlebot3_wall_follower")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/lib/python3/dist-packages/turtlebot3_wall_follower" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/lib/python3/dist-packages/turtlebot3_wall_follower" FILES_MATCHING REGEX "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/lib/python3/dist-packages/turtlebot3_wall_follower/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower/catkin_generated/installspace/turtlebot3_wall_follower.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_wall_follower/cmake" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower/catkin_generated/installspace/turtlebot3_wall_follower-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_wall_follower/cmake" TYPE FILE FILES
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower/catkin_generated/installspace/turtlebot3_wall_followerConfig.cmake"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower/catkin_generated/installspace/turtlebot3_wall_followerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_wall_follower" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/src/turtlebot3_wall_follower/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_wall_follower" TYPE PROGRAM FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower/catkin_generated/installspace/controller")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turtlebot3_wall_follower" TYPE PROGRAM FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower/catkin_generated/installspace/server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_wall_follower" TYPE FILE FILES
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/src/turtlebot3_wall_follower/launch/turtle.launch"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/src/turtlebot3_wall_follower/config/wall_at_left.yaml"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/src/turtlebot3_wall_follower/worlds/house_walls.world"
    )
endif()

