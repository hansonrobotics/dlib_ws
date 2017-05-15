# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dlib_puppeteering: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idlib_puppeteering:/home/icog-labs/dlib_ws/src/dlib_puppeteering/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dlib_puppeteering_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/icog-labs/dlib_ws/src/dlib_puppeteering/msg/lm_points.msg" NAME_WE)
add_custom_target(_dlib_puppeteering_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dlib_puppeteering" "/home/icog-labs/dlib_ws/src/dlib_puppeteering/msg/lm_points.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dlib_puppeteering
  "/home/icog-labs/dlib_ws/src/dlib_puppeteering/msg/lm_points.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dlib_puppeteering
)

### Generating Services

### Generating Module File
_generate_module_cpp(dlib_puppeteering
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dlib_puppeteering
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dlib_puppeteering_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dlib_puppeteering_generate_messages dlib_puppeteering_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/dlib_puppeteering/msg/lm_points.msg" NAME_WE)
add_dependencies(dlib_puppeteering_generate_messages_cpp _dlib_puppeteering_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dlib_puppeteering_gencpp)
add_dependencies(dlib_puppeteering_gencpp dlib_puppeteering_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dlib_puppeteering_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dlib_puppeteering
  "/home/icog-labs/dlib_ws/src/dlib_puppeteering/msg/lm_points.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dlib_puppeteering
)

### Generating Services

### Generating Module File
_generate_module_lisp(dlib_puppeteering
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dlib_puppeteering
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dlib_puppeteering_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dlib_puppeteering_generate_messages dlib_puppeteering_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/dlib_puppeteering/msg/lm_points.msg" NAME_WE)
add_dependencies(dlib_puppeteering_generate_messages_lisp _dlib_puppeteering_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dlib_puppeteering_genlisp)
add_dependencies(dlib_puppeteering_genlisp dlib_puppeteering_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dlib_puppeteering_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dlib_puppeteering
  "/home/icog-labs/dlib_ws/src/dlib_puppeteering/msg/lm_points.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlib_puppeteering
)

### Generating Services

### Generating Module File
_generate_module_py(dlib_puppeteering
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlib_puppeteering
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dlib_puppeteering_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dlib_puppeteering_generate_messages dlib_puppeteering_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/icog-labs/dlib_ws/src/dlib_puppeteering/msg/lm_points.msg" NAME_WE)
add_dependencies(dlib_puppeteering_generate_messages_py _dlib_puppeteering_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dlib_puppeteering_genpy)
add_dependencies(dlib_puppeteering_genpy dlib_puppeteering_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dlib_puppeteering_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dlib_puppeteering)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dlib_puppeteering
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(dlib_puppeteering_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dlib_puppeteering)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dlib_puppeteering
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(dlib_puppeteering_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlib_puppeteering)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlib_puppeteering\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dlib_puppeteering
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(dlib_puppeteering_generate_messages_py std_msgs_generate_messages_py)
