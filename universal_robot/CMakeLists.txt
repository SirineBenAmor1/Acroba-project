cmake_minimum_required(VERSION 3.1.3)
project(universal_robot)

find_package(catkin REQUIRED)

catkin_package()

install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
  PATTERN "setup_assistant.launch" EXCLUDE)
install(DIRECTORY config DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
catkin_install_python(PROGRAMS marker_publisher.py robot_move.py moveit_test.py
DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
