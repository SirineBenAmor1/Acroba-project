# Install script for directory: /Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/src/acroba_workshop_sigma

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/mr_niass/miniconda3/envs/ROS/bin/llvm-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/acroba_workshop_sigma/action" TYPE FILE FILES
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/src/acroba_workshop_sigma/action/Move.action"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/src/acroba_workshop_sigma/action/Move2.action"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/src/acroba_workshop_sigma/action/rotate.action"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/src/acroba_workshop_sigma/action/PatrolSkill.action"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/acroba_workshop_sigma/msg" TYPE FILE FILES
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/MoveAction.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/MoveActionGoal.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/MoveActionResult.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/MoveActionFeedback.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/MoveGoal.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/MoveResult.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/MoveFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/acroba_workshop_sigma/msg" TYPE FILE FILES
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/Move2Action.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/Move2ActionGoal.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/Move2ActionResult.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/Move2ActionFeedback.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/Move2Goal.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/Move2Result.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/Move2Feedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/acroba_workshop_sigma/msg" TYPE FILE FILES
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/rotateAction.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/rotateActionGoal.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/rotateActionResult.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/rotateActionFeedback.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/rotateGoal.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/rotateResult.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/rotateFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/acroba_workshop_sigma/msg" TYPE FILE FILES
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/PatrolSkillAction.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/PatrolSkillActionGoal.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/PatrolSkillActionResult.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/PatrolSkillActionFeedback.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/PatrolSkillGoal.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/PatrolSkillResult.msg"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/acroba_workshop_sigma/msg/PatrolSkillFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/acroba_workshop_sigma/cmake" TYPE FILE FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/acroba_workshop_sigma-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/include/acroba_workshop_sigma")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/roseus/ros/acroba_workshop_sigma")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/common-lisp/ros/acroba_workshop_sigma")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/share/gennodejs/ros/acroba_workshop_sigma")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/Users/mr_niass/miniconda3/envs/ROS/bin/python3.9" -m compileall "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/lib/python3.9/site-packages/acroba_workshop_sigma")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.9/site-packages" TYPE DIRECTORY FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/devel/lib/python3.9/site-packages/acroba_workshop_sigma")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/acroba_workshop_sigma.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/acroba_workshop_sigma/cmake" TYPE FILE FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/acroba_workshop_sigma-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/acroba_workshop_sigma/cmake" TYPE FILE FILES
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/acroba_workshop_sigmaConfig.cmake"
    "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/acroba_workshop_sigmaConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/acroba_workshop_sigma" TYPE FILE FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/src/acroba_workshop_sigma/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/spawn_turtle.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/sk_follower.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/sk_leader.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/move_forward.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/pr_move.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/pr_follow.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/test_move.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/test_rotate.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/test_follow.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/pr_rotate.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/rotate.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/skill_test.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/acroba_workshop_sigma" TYPE PROGRAM FILES "/Users/mr_niass/miniconda3/envs/ROS/acroba_workshop_ws/build/acroba_workshop_sigma/catkin_generated/installspace/sk_test.py")
endif()

