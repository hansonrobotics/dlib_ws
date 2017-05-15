# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "blender_api_msgs: 17 messages, 3 services")

set(MSG_I_FLAGS "-Iblender_api_msgs:/home/icog-labs/dlib_ws/src/blender_api_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(blender_api_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableVisemes.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableVisemes.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Target.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Target.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SaccadeCycle.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SaccadeCycle.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/GetAPIVersion.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/GetAPIVersion.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableEmotionStates.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableEmotionStates.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableSomaStates.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableSomaStates.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaStates.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaStates.msg" "blender_api_msgs/SomaState"
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Visemes.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Visemes.msg" "blender_api_msgs/Viseme"
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionStates.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionStates.msg" "blender_api_msgs/EmotionState"
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SetGesture.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SetGesture.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableGestures.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableGestures.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetParam.srv" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetParam.srv" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gestures.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gestures.msg" "blender_api_msgs/Gesture"
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/BlinkCycle.msg" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/BlinkCycle.msg" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetAnimationLength.srv" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetAnimationLength.srv" ""
)

get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/SetParam.srv" NAME_WE)
add_custom_target(_blender_api_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blender_api_msgs" "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/SetParam.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableVisemes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SaccadeCycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableSomaStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/GetAPIVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableEmotionStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaStates.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Visemes.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionStates.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SetGesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableGestures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gestures.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/BlinkCycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)

### Generating Services
_generate_srv_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_srv_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/SetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)
_generate_srv_cpp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetAnimationLength.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
)

### Generating Module File
_generate_module_cpp(blender_api_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(blender_api_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(blender_api_msgs_generate_messages blender_api_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableVisemes.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Target.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SaccadeCycle.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/GetAPIVersion.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableEmotionStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableSomaStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Visemes.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SetGesture.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableGestures.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetParam.srv" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gestures.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/BlinkCycle.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetAnimationLength.srv" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/SetParam.srv" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_cpp _blender_api_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blender_api_msgs_gencpp)
add_dependencies(blender_api_msgs_gencpp blender_api_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blender_api_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableVisemes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SaccadeCycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableSomaStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/GetAPIVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableEmotionStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaStates.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Visemes.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionStates.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SetGesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableGestures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gestures.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/BlinkCycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)

### Generating Services
_generate_srv_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_srv_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/SetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)
_generate_srv_lisp(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetAnimationLength.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
)

### Generating Module File
_generate_module_lisp(blender_api_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(blender_api_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(blender_api_msgs_generate_messages blender_api_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableVisemes.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Target.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SaccadeCycle.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/GetAPIVersion.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableEmotionStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableSomaStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Visemes.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SetGesture.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableGestures.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetParam.srv" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gestures.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/BlinkCycle.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetAnimationLength.srv" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/SetParam.srv" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_lisp _blender_api_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blender_api_msgs_genlisp)
add_dependencies(blender_api_msgs_genlisp blender_api_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blender_api_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableVisemes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SaccadeCycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableSomaStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/GetAPIVersion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableEmotionStates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaStates.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Visemes.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionStates.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SetGesture.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableGestures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gestures.msg"
  "${MSG_I_FLAGS}"
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_msg_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/BlinkCycle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)

### Generating Services
_generate_srv_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_srv_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/SetParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)
_generate_srv_py(blender_api_msgs
  "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetAnimationLength.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
)

### Generating Module File
_generate_module_py(blender_api_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(blender_api_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(blender_api_msgs_generate_messages blender_api_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableVisemes.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Target.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gesture.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SaccadeCycle.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaState.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/GetAPIVersion.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableEmotionStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableSomaStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SomaStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Visemes.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/EmotionStates.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/SetGesture.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Viseme.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/AvailableGestures.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetParam.srv" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/Gestures.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/msg/BlinkCycle.msg" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/GetAnimationLength.srv" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/blender_api_msgs/srv/SetParam.srv" NAME_WE)
add_dependencies(blender_api_msgs_generate_messages_py _blender_api_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blender_api_msgs_genpy)
add_dependencies(blender_api_msgs_genpy blender_api_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blender_api_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blender_api_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(blender_api_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(blender_api_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blender_api_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(blender_api_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(blender_api_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blender_api_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(blender_api_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(blender_api_msgs_generate_messages_py geometry_msgs_generate_messages_py)
