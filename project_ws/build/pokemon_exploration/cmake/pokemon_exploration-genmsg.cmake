# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pokemon_exploration: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ipokemon_exploration:/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pokemon_exploration_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg" NAME_WE)
add_custom_target(_pokemon_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pokemon_exploration" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg" "pokemon_exploration/StartActionGoal:actionlib_msgs/GoalID:pokemon_exploration/StartGoal:std_msgs/Header:pokemon_exploration/StartResult:pokemon_exploration/StartFeedback:actionlib_msgs/GoalStatus:pokemon_exploration/StartActionResult:pokemon_exploration/StartActionFeedback"
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg" NAME_WE)
add_custom_target(_pokemon_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pokemon_exploration" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:pokemon_exploration/StartGoal"
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg" NAME_WE)
add_custom_target(_pokemon_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pokemon_exploration" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg" "actionlib_msgs/GoalStatus:pokemon_exploration/StartResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg" NAME_WE)
add_custom_target(_pokemon_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pokemon_exploration" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg" "actionlib_msgs/GoalStatus:pokemon_exploration/StartFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg" NAME_WE)
add_custom_target(_pokemon_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pokemon_exploration" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg" ""
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg" NAME_WE)
add_custom_target(_pokemon_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pokemon_exploration" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg" ""
)

get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg" NAME_WE)
add_custom_target(_pokemon_exploration_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pokemon_exploration" "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_cpp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_cpp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_cpp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_cpp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_cpp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_cpp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pokemon_exploration
)

### Generating Services

### Generating Module File
_generate_module_cpp(pokemon_exploration
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pokemon_exploration
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pokemon_exploration_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pokemon_exploration_generate_messages pokemon_exploration_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_cpp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_cpp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_cpp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_cpp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_cpp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_cpp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_cpp _pokemon_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pokemon_exploration_gencpp)
add_dependencies(pokemon_exploration_gencpp pokemon_exploration_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pokemon_exploration_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_eus(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_eus(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_eus(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_eus(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_eus(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_eus(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pokemon_exploration
)

### Generating Services

### Generating Module File
_generate_module_eus(pokemon_exploration
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pokemon_exploration
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pokemon_exploration_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pokemon_exploration_generate_messages pokemon_exploration_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_eus _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_eus _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_eus _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_eus _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_eus _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_eus _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_eus _pokemon_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pokemon_exploration_geneus)
add_dependencies(pokemon_exploration_geneus pokemon_exploration_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pokemon_exploration_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_lisp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_lisp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_lisp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_lisp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_lisp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_lisp(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pokemon_exploration
)

### Generating Services

### Generating Module File
_generate_module_lisp(pokemon_exploration
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pokemon_exploration
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pokemon_exploration_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pokemon_exploration_generate_messages pokemon_exploration_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_lisp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_lisp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_lisp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_lisp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_lisp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_lisp _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_lisp _pokemon_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pokemon_exploration_genlisp)
add_dependencies(pokemon_exploration_genlisp pokemon_exploration_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pokemon_exploration_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_nodejs(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_nodejs(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_nodejs(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_nodejs(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_nodejs(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_nodejs(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pokemon_exploration
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pokemon_exploration
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pokemon_exploration
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pokemon_exploration_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pokemon_exploration_generate_messages pokemon_exploration_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_nodejs _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_nodejs _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_nodejs _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_nodejs _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_nodejs _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_nodejs _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_nodejs _pokemon_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pokemon_exploration_gennodejs)
add_dependencies(pokemon_exploration_gennodejs pokemon_exploration_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pokemon_exploration_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_py(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_py(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_py(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_py(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_py(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration
)
_generate_msg_py(pokemon_exploration
  "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration
)

### Generating Services

### Generating Module File
_generate_module_py(pokemon_exploration
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pokemon_exploration_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pokemon_exploration_generate_messages pokemon_exploration_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartAction.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_py _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionGoal.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_py _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionResult.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_py _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartActionFeedback.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_py _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartGoal.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_py _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartResult.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_py _pokemon_exploration_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ljy/Sustech_CS401_Final_Project/project_ws/devel/share/pokemon_exploration/msg/StartFeedback.msg" NAME_WE)
add_dependencies(pokemon_exploration_generate_messages_py _pokemon_exploration_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pokemon_exploration_genpy)
add_dependencies(pokemon_exploration_genpy pokemon_exploration_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pokemon_exploration_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pokemon_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pokemon_exploration
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(pokemon_exploration_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pokemon_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pokemon_exploration
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(pokemon_exploration_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pokemon_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pokemon_exploration
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(pokemon_exploration_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pokemon_exploration)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pokemon_exploration
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(pokemon_exploration_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pokemon_exploration
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(pokemon_exploration_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
