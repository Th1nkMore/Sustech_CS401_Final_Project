# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtlebot3_wall_follower: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iturtlebot3_wall_follower:/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtlebot3_wall_follower_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg" NAME_WE)
add_custom_target(_turtlebot3_wall_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_wall_follower" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg" "turtlebot3_wall_follower/StartActionFeedback:turtlebot3_wall_follower/StartActionGoal:turtlebot3_wall_follower/StartResult:actionlib_msgs/GoalID:turtlebot3_wall_follower/StartGoal:turtlebot3_wall_follower/StartFeedback:turtlebot3_wall_follower/StartActionResult:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg" NAME_WE)
add_custom_target(_turtlebot3_wall_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_wall_follower" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:turtlebot3_wall_follower/StartGoal"
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg" NAME_WE)
add_custom_target(_turtlebot3_wall_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_wall_follower" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg" "turtlebot3_wall_follower/StartResult:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg" NAME_WE)
add_custom_target(_turtlebot3_wall_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_wall_follower" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg" "turtlebot3_wall_follower/StartFeedback:actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg" NAME_WE)
add_custom_target(_turtlebot3_wall_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_wall_follower" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg" ""
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg" NAME_WE)
add_custom_target(_turtlebot3_wall_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_wall_follower" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg" ""
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg" NAME_WE)
add_custom_target(_turtlebot3_wall_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlebot3_wall_follower" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_cpp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_cpp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_cpp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_cpp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_cpp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_cpp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_wall_follower
)

### Generating Services

### Generating Module File
_generate_module_cpp(turtlebot3_wall_follower
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_wall_follower
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtlebot3_wall_follower_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtlebot3_wall_follower_generate_messages turtlebot3_wall_follower_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_cpp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_cpp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_cpp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_cpp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_cpp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_cpp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_cpp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_wall_follower_gencpp)
add_dependencies(turtlebot3_wall_follower_gencpp turtlebot3_wall_follower_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_wall_follower_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_eus(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_eus(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_eus(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_eus(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_eus(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_eus(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_wall_follower
)

### Generating Services

### Generating Module File
_generate_module_eus(turtlebot3_wall_follower
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_wall_follower
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtlebot3_wall_follower_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtlebot3_wall_follower_generate_messages turtlebot3_wall_follower_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_eus _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_eus _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_eus _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_eus _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_eus _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_eus _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_eus _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_wall_follower_geneus)
add_dependencies(turtlebot3_wall_follower_geneus turtlebot3_wall_follower_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_wall_follower_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_lisp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_lisp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_lisp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_lisp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_lisp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_lisp(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_wall_follower
)

### Generating Services

### Generating Module File
_generate_module_lisp(turtlebot3_wall_follower
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_wall_follower
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtlebot3_wall_follower_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtlebot3_wall_follower_generate_messages turtlebot3_wall_follower_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_lisp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_lisp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_lisp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_lisp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_lisp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_lisp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_lisp _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_wall_follower_genlisp)
add_dependencies(turtlebot3_wall_follower_genlisp turtlebot3_wall_follower_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_wall_follower_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_nodejs(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_nodejs(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_nodejs(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_nodejs(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_nodejs(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_nodejs(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_wall_follower
)

### Generating Services

### Generating Module File
_generate_module_nodejs(turtlebot3_wall_follower
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_wall_follower
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtlebot3_wall_follower_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtlebot3_wall_follower_generate_messages turtlebot3_wall_follower_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_nodejs _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_nodejs _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_nodejs _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_nodejs _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_nodejs _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_nodejs _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_nodejs _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_wall_follower_gennodejs)
add_dependencies(turtlebot3_wall_follower_gennodejs turtlebot3_wall_follower_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_wall_follower_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_py(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_py(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_py(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_py(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_py(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower
)
_generate_msg_py(turtlebot3_wall_follower
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower
)

### Generating Services

### Generating Module File
_generate_module_py(turtlebot3_wall_follower
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtlebot3_wall_follower_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtlebot3_wall_follower_generate_messages turtlebot3_wall_follower_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartAction.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_py _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionGoal.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_py _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionResult.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_py _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartActionFeedback.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_py _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartGoal.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_py _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartResult.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_py _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/turtlebot3_wall_follower/msg/StartFeedback.msg" NAME_WE)
add_dependencies(turtlebot3_wall_follower_generate_messages_py _turtlebot3_wall_follower_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlebot3_wall_follower_genpy)
add_dependencies(turtlebot3_wall_follower_genpy turtlebot3_wall_follower_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlebot3_wall_follower_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_wall_follower)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlebot3_wall_follower
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(turtlebot3_wall_follower_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_wall_follower)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlebot3_wall_follower
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(turtlebot3_wall_follower_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_wall_follower)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlebot3_wall_follower
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(turtlebot3_wall_follower_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_wall_follower)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlebot3_wall_follower
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(turtlebot3_wall_follower_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlebot3_wall_follower/.+/__init__.pyc?$"
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(turtlebot3_wall_follower_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
