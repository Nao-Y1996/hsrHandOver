# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pre_experiment: 2 messages, 1 services")

set(MSG_I_FLAGS "-Ipre_experiment:/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pre_experiment_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv" NAME_WE)
add_custom_target(_pre_experiment_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pre_experiment" "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv" ""
)

get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg" NAME_WE)
add_custom_target(_pre_experiment_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pre_experiment" "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg" ""
)

get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg" NAME_WE)
add_custom_target(_pre_experiment_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pre_experiment" "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pre_experiment
)
_generate_msg_cpp(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pre_experiment
)

### Generating Services
_generate_srv_cpp(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pre_experiment
)

### Generating Module File
_generate_module_cpp(pre_experiment
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pre_experiment
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pre_experiment_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pre_experiment_generate_messages pre_experiment_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv" NAME_WE)
add_dependencies(pre_experiment_generate_messages_cpp _pre_experiment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg" NAME_WE)
add_dependencies(pre_experiment_generate_messages_cpp _pre_experiment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg" NAME_WE)
add_dependencies(pre_experiment_generate_messages_cpp _pre_experiment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pre_experiment_gencpp)
add_dependencies(pre_experiment_gencpp pre_experiment_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pre_experiment_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pre_experiment
)
_generate_msg_eus(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pre_experiment
)

### Generating Services
_generate_srv_eus(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pre_experiment
)

### Generating Module File
_generate_module_eus(pre_experiment
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pre_experiment
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pre_experiment_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pre_experiment_generate_messages pre_experiment_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv" NAME_WE)
add_dependencies(pre_experiment_generate_messages_eus _pre_experiment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg" NAME_WE)
add_dependencies(pre_experiment_generate_messages_eus _pre_experiment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg" NAME_WE)
add_dependencies(pre_experiment_generate_messages_eus _pre_experiment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pre_experiment_geneus)
add_dependencies(pre_experiment_geneus pre_experiment_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pre_experiment_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pre_experiment
)
_generate_msg_lisp(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pre_experiment
)

### Generating Services
_generate_srv_lisp(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pre_experiment
)

### Generating Module File
_generate_module_lisp(pre_experiment
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pre_experiment
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pre_experiment_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pre_experiment_generate_messages pre_experiment_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv" NAME_WE)
add_dependencies(pre_experiment_generate_messages_lisp _pre_experiment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg" NAME_WE)
add_dependencies(pre_experiment_generate_messages_lisp _pre_experiment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg" NAME_WE)
add_dependencies(pre_experiment_generate_messages_lisp _pre_experiment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pre_experiment_genlisp)
add_dependencies(pre_experiment_genlisp pre_experiment_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pre_experiment_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pre_experiment
)
_generate_msg_nodejs(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pre_experiment
)

### Generating Services
_generate_srv_nodejs(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pre_experiment
)

### Generating Module File
_generate_module_nodejs(pre_experiment
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pre_experiment
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pre_experiment_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pre_experiment_generate_messages pre_experiment_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv" NAME_WE)
add_dependencies(pre_experiment_generate_messages_nodejs _pre_experiment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg" NAME_WE)
add_dependencies(pre_experiment_generate_messages_nodejs _pre_experiment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg" NAME_WE)
add_dependencies(pre_experiment_generate_messages_nodejs _pre_experiment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pre_experiment_gennodejs)
add_dependencies(pre_experiment_gennodejs pre_experiment_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pre_experiment_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pre_experiment
)
_generate_msg_py(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pre_experiment
)

### Generating Services
_generate_srv_py(pre_experiment
  "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pre_experiment
)

### Generating Module File
_generate_module_py(pre_experiment
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pre_experiment
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pre_experiment_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pre_experiment_generate_messages pre_experiment_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/srv/input4handing.srv" NAME_WE)
add_dependencies(pre_experiment_generate_messages_py _pre_experiment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/face_info.msg" NAME_WE)
add_dependencies(pre_experiment_generate_messages_py _pre_experiment_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/pre_experiment/msg/grasp_key.msg" NAME_WE)
add_dependencies(pre_experiment_generate_messages_py _pre_experiment_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pre_experiment_genpy)
add_dependencies(pre_experiment_genpy pre_experiment_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pre_experiment_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pre_experiment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pre_experiment
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pre_experiment_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pre_experiment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pre_experiment
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pre_experiment_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pre_experiment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pre_experiment
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pre_experiment_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pre_experiment)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pre_experiment
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pre_experiment_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pre_experiment)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pre_experiment\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pre_experiment
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pre_experiment_generate_messages_py std_msgs_generate_messages_py)
endif()
