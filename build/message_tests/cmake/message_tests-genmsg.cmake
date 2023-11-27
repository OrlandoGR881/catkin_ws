# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "message_tests: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(message_tests_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv" NAME_WE)
add_custom_target(_message_tests_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "message_tests" "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv" ""
)

get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv" NAME_WE)
add_custom_target(_message_tests_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "message_tests" "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(message_tests
  "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/message_tests
)
_generate_srv_cpp(message_tests
  "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/message_tests
)

### Generating Module File
_generate_module_cpp(message_tests
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/message_tests
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(message_tests_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(message_tests_generate_messages message_tests_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv" NAME_WE)
add_dependencies(message_tests_generate_messages_cpp _message_tests_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv" NAME_WE)
add_dependencies(message_tests_generate_messages_cpp _message_tests_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(message_tests_gencpp)
add_dependencies(message_tests_gencpp message_tests_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS message_tests_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(message_tests
  "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/message_tests
)
_generate_srv_eus(message_tests
  "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/message_tests
)

### Generating Module File
_generate_module_eus(message_tests
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/message_tests
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(message_tests_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(message_tests_generate_messages message_tests_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv" NAME_WE)
add_dependencies(message_tests_generate_messages_eus _message_tests_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv" NAME_WE)
add_dependencies(message_tests_generate_messages_eus _message_tests_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(message_tests_geneus)
add_dependencies(message_tests_geneus message_tests_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS message_tests_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(message_tests
  "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/message_tests
)
_generate_srv_lisp(message_tests
  "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/message_tests
)

### Generating Module File
_generate_module_lisp(message_tests
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/message_tests
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(message_tests_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(message_tests_generate_messages message_tests_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv" NAME_WE)
add_dependencies(message_tests_generate_messages_lisp _message_tests_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv" NAME_WE)
add_dependencies(message_tests_generate_messages_lisp _message_tests_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(message_tests_genlisp)
add_dependencies(message_tests_genlisp message_tests_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS message_tests_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(message_tests
  "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/message_tests
)
_generate_srv_nodejs(message_tests
  "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/message_tests
)

### Generating Module File
_generate_module_nodejs(message_tests
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/message_tests
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(message_tests_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(message_tests_generate_messages message_tests_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv" NAME_WE)
add_dependencies(message_tests_generate_messages_nodejs _message_tests_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv" NAME_WE)
add_dependencies(message_tests_generate_messages_nodejs _message_tests_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(message_tests_gennodejs)
add_dependencies(message_tests_gennodejs message_tests_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS message_tests_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(message_tests
  "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/message_tests
)
_generate_srv_py(message_tests
  "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/message_tests
)

### Generating Module File
_generate_module_py(message_tests
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/message_tests
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(message_tests_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(message_tests_generate_messages message_tests_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changerate.srv" NAME_WE)
add_dependencies(message_tests_generate_messages_py _message_tests_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubunturos/catkin_ws/src/message_tests/srv/Changespeed.srv" NAME_WE)
add_dependencies(message_tests_generate_messages_py _message_tests_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(message_tests_genpy)
add_dependencies(message_tests_genpy message_tests_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS message_tests_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/message_tests)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/message_tests
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(message_tests_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/message_tests)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/message_tests
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(message_tests_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/message_tests)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/message_tests
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(message_tests_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/message_tests)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/message_tests
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(message_tests_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/message_tests)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/message_tests\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/message_tests
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(message_tests_generate_messages_py std_msgs_generate_messages_py)
endif()
