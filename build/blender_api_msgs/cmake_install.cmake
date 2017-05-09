# Install script for directory: /home/esku/dlib_ws/src/blender_api_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/esku/dlib_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blender_api_msgs/msg" TYPE FILE FILES
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/GetAPIVersion.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/AvailableSomaStates.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/AvailableEmotionStates.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/AvailableGestures.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/AvailableVisemes.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/EmotionState.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/EmotionStates.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/Gesture.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/Gestures.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/SetGesture.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/SomaState.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/SomaStates.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/Target.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/Viseme.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/Visemes.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/BlinkCycle.msg"
    "/home/esku/dlib_ws/src/blender_api_msgs/msg/SaccadeCycle.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blender_api_msgs/srv" TYPE FILE FILES
    "/home/esku/dlib_ws/src/blender_api_msgs/srv/SetParam.srv"
    "/home/esku/dlib_ws/src/blender_api_msgs/srv/GetParam.srv"
    "/home/esku/dlib_ws/src/blender_api_msgs/srv/GetAnimationLength.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blender_api_msgs/cmake" TYPE FILE FILES "/home/esku/dlib_ws/build/blender_api_msgs/catkin_generated/installspace/blender_api_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/esku/dlib_ws/devel/include/blender_api_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/esku/dlib_ws/devel/share/common-lisp/ros/blender_api_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/esku/dlib_ws/devel/lib/python2.7/dist-packages/blender_api_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/esku/dlib_ws/devel/lib/python2.7/dist-packages/blender_api_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/esku/dlib_ws/build/blender_api_msgs/catkin_generated/installspace/blender_api_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blender_api_msgs/cmake" TYPE FILE FILES "/home/esku/dlib_ws/build/blender_api_msgs/catkin_generated/installspace/blender_api_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blender_api_msgs/cmake" TYPE FILE FILES
    "/home/esku/dlib_ws/build/blender_api_msgs/catkin_generated/installspace/blender_api_msgsConfig.cmake"
    "/home/esku/dlib_ws/build/blender_api_msgs/catkin_generated/installspace/blender_api_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/blender_api_msgs" TYPE FILE FILES "/home/esku/dlib_ws/src/blender_api_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

