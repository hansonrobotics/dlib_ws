execute_process(COMMAND "/home/meareg/dlib_ws/build/pau2motors/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/meareg/dlib_ws/build/pau2motors/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
