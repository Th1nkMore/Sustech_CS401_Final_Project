execute_process(COMMAND "/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ljy/Sustech_CS401_Final_Project/project_ws/build/turtlebot3_wall_follower/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
