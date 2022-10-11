# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "myservice: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(myservice_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv" NAME_WE)
add_custom_target(_myservice_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "myservice" "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(myservice
  "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myservice
)

### Generating Module File
_generate_module_cpp(myservice
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myservice
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(myservice_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(myservice_generate_messages myservice_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv" NAME_WE)
add_dependencies(myservice_generate_messages_cpp _myservice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myservice_gencpp)
add_dependencies(myservice_gencpp myservice_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myservice_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(myservice
  "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myservice
)

### Generating Module File
_generate_module_eus(myservice
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myservice
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(myservice_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(myservice_generate_messages myservice_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv" NAME_WE)
add_dependencies(myservice_generate_messages_eus _myservice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myservice_geneus)
add_dependencies(myservice_geneus myservice_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myservice_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(myservice
  "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myservice
)

### Generating Module File
_generate_module_lisp(myservice
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myservice
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(myservice_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(myservice_generate_messages myservice_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv" NAME_WE)
add_dependencies(myservice_generate_messages_lisp _myservice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myservice_genlisp)
add_dependencies(myservice_genlisp myservice_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myservice_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(myservice
  "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myservice
)

### Generating Module File
_generate_module_nodejs(myservice
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myservice
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(myservice_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(myservice_generate_messages myservice_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv" NAME_WE)
add_dependencies(myservice_generate_messages_nodejs _myservice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myservice_gennodejs)
add_dependencies(myservice_gennodejs myservice_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myservice_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(myservice
  "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myservice
)

### Generating Module File
_generate_module_py(myservice
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myservice
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(myservice_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(myservice_generate_messages myservice_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/maxyang/ros/demo01_ws/src/myservice/srv/add.srv" NAME_WE)
add_dependencies(myservice_generate_messages_py _myservice_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(myservice_genpy)
add_dependencies(myservice_genpy myservice_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS myservice_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myservice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/myservice
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(myservice_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myservice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/myservice
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(myservice_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myservice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/myservice
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(myservice_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myservice)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/myservice
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(myservice_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myservice)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myservice\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/myservice
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(myservice_generate_messages_py std_msgs_generate_messages_py)
endif()
