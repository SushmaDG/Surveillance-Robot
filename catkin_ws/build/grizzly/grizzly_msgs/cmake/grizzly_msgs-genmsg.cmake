# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "grizzly_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Igrizzly_msgs:/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(grizzly_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg" NAME_WE)
add_custom_target(_grizzly_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "grizzly_msgs" "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg" NAME_WE)
add_custom_target(_grizzly_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "grizzly_msgs" "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg" ""
)

get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg" NAME_WE)
add_custom_target(_grizzly_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "grizzly_msgs" "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grizzly_msgs
)
_generate_msg_cpp(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grizzly_msgs
)
_generate_msg_cpp(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grizzly_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(grizzly_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grizzly_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(grizzly_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(grizzly_msgs_generate_messages grizzly_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_cpp _grizzly_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_cpp _grizzly_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_cpp _grizzly_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grizzly_msgs_gencpp)
add_dependencies(grizzly_msgs_gencpp grizzly_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grizzly_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grizzly_msgs
)
_generate_msg_eus(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grizzly_msgs
)
_generate_msg_eus(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grizzly_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(grizzly_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grizzly_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(grizzly_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(grizzly_msgs_generate_messages grizzly_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_eus _grizzly_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_eus _grizzly_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_eus _grizzly_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grizzly_msgs_geneus)
add_dependencies(grizzly_msgs_geneus grizzly_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grizzly_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grizzly_msgs
)
_generate_msg_lisp(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grizzly_msgs
)
_generate_msg_lisp(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grizzly_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(grizzly_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grizzly_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(grizzly_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(grizzly_msgs_generate_messages grizzly_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_lisp _grizzly_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_lisp _grizzly_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_lisp _grizzly_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grizzly_msgs_genlisp)
add_dependencies(grizzly_msgs_genlisp grizzly_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grizzly_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grizzly_msgs
)
_generate_msg_nodejs(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grizzly_msgs
)
_generate_msg_nodejs(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grizzly_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(grizzly_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grizzly_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(grizzly_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(grizzly_msgs_generate_messages grizzly_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_nodejs _grizzly_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_nodejs _grizzly_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_nodejs _grizzly_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grizzly_msgs_gennodejs)
add_dependencies(grizzly_msgs_gennodejs grizzly_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grizzly_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grizzly_msgs
)
_generate_msg_py(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grizzly_msgs
)
_generate_msg_py(grizzly_msgs
  "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grizzly_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(grizzly_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grizzly_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(grizzly_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(grizzly_msgs_generate_messages grizzly_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Drive.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_py _grizzly_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/Ambience.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_py _grizzly_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/manikanta/catkin_ws/src/grizzly/grizzly_msgs/msg/RawStatus.msg" NAME_WE)
add_dependencies(grizzly_msgs_generate_messages_py _grizzly_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(grizzly_msgs_genpy)
add_dependencies(grizzly_msgs_genpy grizzly_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS grizzly_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grizzly_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/grizzly_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(grizzly_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grizzly_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/grizzly_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(grizzly_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grizzly_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/grizzly_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(grizzly_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grizzly_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/grizzly_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(grizzly_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grizzly_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grizzly_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/grizzly_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(grizzly_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
