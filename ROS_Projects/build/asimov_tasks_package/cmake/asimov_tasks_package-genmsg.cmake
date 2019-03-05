# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "asimov_tasks_package: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iasimov_tasks_package:/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(asimov_tasks_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg" NAME_WE)
add_custom_target(_asimov_tasks_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "asimov_tasks_package" "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg" ""
)

get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv" NAME_WE)
add_custom_target(_asimov_tasks_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "asimov_tasks_package" "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(asimov_tasks_package
  "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asimov_tasks_package
)

### Generating Services
_generate_srv_cpp(asimov_tasks_package
  "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asimov_tasks_package
)

### Generating Module File
_generate_module_cpp(asimov_tasks_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asimov_tasks_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(asimov_tasks_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(asimov_tasks_package_generate_messages asimov_tasks_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg" NAME_WE)
add_dependencies(asimov_tasks_package_generate_messages_cpp _asimov_tasks_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv" NAME_WE)
add_dependencies(asimov_tasks_package_generate_messages_cpp _asimov_tasks_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(asimov_tasks_package_gencpp)
add_dependencies(asimov_tasks_package_gencpp asimov_tasks_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS asimov_tasks_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(asimov_tasks_package
  "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asimov_tasks_package
)

### Generating Services
_generate_srv_eus(asimov_tasks_package
  "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asimov_tasks_package
)

### Generating Module File
_generate_module_eus(asimov_tasks_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asimov_tasks_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(asimov_tasks_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(asimov_tasks_package_generate_messages asimov_tasks_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg" NAME_WE)
add_dependencies(asimov_tasks_package_generate_messages_eus _asimov_tasks_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv" NAME_WE)
add_dependencies(asimov_tasks_package_generate_messages_eus _asimov_tasks_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(asimov_tasks_package_geneus)
add_dependencies(asimov_tasks_package_geneus asimov_tasks_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS asimov_tasks_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(asimov_tasks_package
  "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asimov_tasks_package
)

### Generating Services
_generate_srv_lisp(asimov_tasks_package
  "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asimov_tasks_package
)

### Generating Module File
_generate_module_lisp(asimov_tasks_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asimov_tasks_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(asimov_tasks_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(asimov_tasks_package_generate_messages asimov_tasks_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg" NAME_WE)
add_dependencies(asimov_tasks_package_generate_messages_lisp _asimov_tasks_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv" NAME_WE)
add_dependencies(asimov_tasks_package_generate_messages_lisp _asimov_tasks_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(asimov_tasks_package_genlisp)
add_dependencies(asimov_tasks_package_genlisp asimov_tasks_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS asimov_tasks_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(asimov_tasks_package
  "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asimov_tasks_package
)

### Generating Services
_generate_srv_nodejs(asimov_tasks_package
  "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asimov_tasks_package
)

### Generating Module File
_generate_module_nodejs(asimov_tasks_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asimov_tasks_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(asimov_tasks_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(asimov_tasks_package_generate_messages asimov_tasks_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg" NAME_WE)
add_dependencies(asimov_tasks_package_generate_messages_nodejs _asimov_tasks_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv" NAME_WE)
add_dependencies(asimov_tasks_package_generate_messages_nodejs _asimov_tasks_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(asimov_tasks_package_gennodejs)
add_dependencies(asimov_tasks_package_gennodejs asimov_tasks_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS asimov_tasks_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(asimov_tasks_package
  "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asimov_tasks_package
)

### Generating Services
_generate_srv_py(asimov_tasks_package
  "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asimov_tasks_package
)

### Generating Module File
_generate_module_py(asimov_tasks_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asimov_tasks_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(asimov_tasks_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(asimov_tasks_package_generate_messages asimov_tasks_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/msg/calc_message.msg" NAME_WE)
add_dependencies(asimov_tasks_package_generate_messages_py _asimov_tasks_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rajesh/ROS_GIT_Workspace/ROS_Projects/src/asimov_tasks_package/srv/calc_service.srv" NAME_WE)
add_dependencies(asimov_tasks_package_generate_messages_py _asimov_tasks_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(asimov_tasks_package_genpy)
add_dependencies(asimov_tasks_package_genpy asimov_tasks_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS asimov_tasks_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asimov_tasks_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/asimov_tasks_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(asimov_tasks_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asimov_tasks_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/asimov_tasks_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(asimov_tasks_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asimov_tasks_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/asimov_tasks_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(asimov_tasks_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asimov_tasks_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/asimov_tasks_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(asimov_tasks_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asimov_tasks_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asimov_tasks_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/asimov_tasks_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(asimov_tasks_package_generate_messages_py std_msgs_generate_messages_py)
endif()
