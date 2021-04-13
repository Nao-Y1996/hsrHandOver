# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hsr_handing: 3 messages, 2 services")

set(MSG_I_FLAGS "-Ihsr_handing:/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hsr_handing_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg" NAME_WE)
add_custom_target(_hsr_handing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hsr_handing" "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg" ""
)

get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv" NAME_WE)
add_custom_target(_hsr_handing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hsr_handing" "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv" ""
)

get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg" NAME_WE)
add_custom_target(_hsr_handing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hsr_handing" "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg" ""
)

get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv" NAME_WE)
add_custom_target(_hsr_handing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hsr_handing" "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv" ""
)

get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg" NAME_WE)
add_custom_target(_hsr_handing_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hsr_handing" "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hsr_handing
)
_generate_msg_cpp(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hsr_handing
)
_generate_msg_cpp(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hsr_handing
)

### Generating Services
_generate_srv_cpp(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hsr_handing
)
_generate_srv_cpp(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hsr_handing
)

### Generating Module File
_generate_module_cpp(hsr_handing
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hsr_handing
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hsr_handing_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hsr_handing_generate_messages hsr_handing_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_cpp _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv" NAME_WE)
add_dependencies(hsr_handing_generate_messages_cpp _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_cpp _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv" NAME_WE)
add_dependencies(hsr_handing_generate_messages_cpp _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_cpp _hsr_handing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hsr_handing_gencpp)
add_dependencies(hsr_handing_gencpp hsr_handing_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hsr_handing_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hsr_handing
)
_generate_msg_eus(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hsr_handing
)
_generate_msg_eus(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hsr_handing
)

### Generating Services
_generate_srv_eus(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hsr_handing
)
_generate_srv_eus(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hsr_handing
)

### Generating Module File
_generate_module_eus(hsr_handing
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hsr_handing
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hsr_handing_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hsr_handing_generate_messages hsr_handing_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_eus _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv" NAME_WE)
add_dependencies(hsr_handing_generate_messages_eus _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_eus _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv" NAME_WE)
add_dependencies(hsr_handing_generate_messages_eus _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_eus _hsr_handing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hsr_handing_geneus)
add_dependencies(hsr_handing_geneus hsr_handing_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hsr_handing_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hsr_handing
)
_generate_msg_lisp(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hsr_handing
)
_generate_msg_lisp(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hsr_handing
)

### Generating Services
_generate_srv_lisp(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hsr_handing
)
_generate_srv_lisp(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hsr_handing
)

### Generating Module File
_generate_module_lisp(hsr_handing
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hsr_handing
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hsr_handing_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hsr_handing_generate_messages hsr_handing_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_lisp _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv" NAME_WE)
add_dependencies(hsr_handing_generate_messages_lisp _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_lisp _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv" NAME_WE)
add_dependencies(hsr_handing_generate_messages_lisp _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_lisp _hsr_handing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hsr_handing_genlisp)
add_dependencies(hsr_handing_genlisp hsr_handing_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hsr_handing_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hsr_handing
)
_generate_msg_nodejs(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hsr_handing
)
_generate_msg_nodejs(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hsr_handing
)

### Generating Services
_generate_srv_nodejs(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hsr_handing
)
_generate_srv_nodejs(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hsr_handing
)

### Generating Module File
_generate_module_nodejs(hsr_handing
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hsr_handing
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hsr_handing_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hsr_handing_generate_messages hsr_handing_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_nodejs _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv" NAME_WE)
add_dependencies(hsr_handing_generate_messages_nodejs _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_nodejs _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv" NAME_WE)
add_dependencies(hsr_handing_generate_messages_nodejs _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_nodejs _hsr_handing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hsr_handing_gennodejs)
add_dependencies(hsr_handing_gennodejs hsr_handing_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hsr_handing_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hsr_handing
)
_generate_msg_py(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hsr_handing
)
_generate_msg_py(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hsr_handing
)

### Generating Services
_generate_srv_py(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hsr_handing
)
_generate_srv_py(hsr_handing
  "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hsr_handing
)

### Generating Module File
_generate_module_py(hsr_handing
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hsr_handing
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hsr_handing_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hsr_handing_generate_messages hsr_handing_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/pose_info.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_py _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/input4handing.srv" NAME_WE)
add_dependencies(hsr_handing_generate_messages_py _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/face_info.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_py _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/srv/fuzzy.srv" NAME_WE)
add_dependencies(hsr_handing_generate_messages_py _hsr_handing_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/naoyamada/CW/catkin_ws3/src/hsr_handing/msg/grasp_key.msg" NAME_WE)
add_dependencies(hsr_handing_generate_messages_py _hsr_handing_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hsr_handing_genpy)
add_dependencies(hsr_handing_genpy hsr_handing_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hsr_handing_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hsr_handing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hsr_handing
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hsr_handing_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hsr_handing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hsr_handing
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hsr_handing_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hsr_handing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hsr_handing
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hsr_handing_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hsr_handing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hsr_handing
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hsr_handing_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hsr_handing)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hsr_handing\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hsr_handing
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hsr_handing_generate_messages_py std_msgs_generate_messages_py)
endif()
