# Install script for directory: /home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_exploration

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pokemon_exploration/action" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_exploration/action/Start.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pokemon_exploration/msg" TYPE FILE FILES
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pokemon_exploration/cmake" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/pokemon_exploration/catkin_generated/installspace/pokemon_exploration-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/include/pokemon_exploration")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/roseus/ros/pokemon_exploration")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/common-lisp/ros/pokemon_exploration")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/gennodejs/ros/pokemon_exploration")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/lib/python3/dist-packages/pokemon_exploration")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/lib/python3/dist-packages/pokemon_exploration")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/pokemon_exploration/catkin_generated/installspace/pokemon_exploration.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pokemon_exploration/cmake" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/pokemon_exploration/catkin_generated/installspace/pokemon_exploration-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pokemon_exploration/cmake" TYPE FILE FILES
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/pokemon_exploration/catkin_generated/installspace/pokemon_explorationConfig.cmake"
    "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/pokemon_exploration/catkin_generated/installspace/pokemon_explorationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pokemon_exploration" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_exploration/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pokemon_exploration" TYPE FILE FILES "/home/ljy/Sustech_CS401_Final_Project/project_ws/src/pokemon_exploration/config/wall_at_left.yaml")
endif()

