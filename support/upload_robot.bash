#!/bin/bash

cd $HOME/niryo_robot_ws/src

sshpass -p robotics ssh niryo@niryo_pi4 "mkdir /home/niryo/catkin_ws/src/my_niryo_robot"


echo "Uploading  my_niryo_robot_hardware_interface files to robot..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_robot_hardware_interface niryo@niryo_pi4:/home/niryo/catkin_ws/src/my_niryo_robot

echo "Uploading  my_niryo_robot_description files to robot..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_robot_description niryo@niryo_pi4:/home/niryo/catkin_ws/src/my_niryo_robot


echo "Uploading  my_niryo_ned_moveit_config files to robot..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_ned_moveit_config niryo@niryo_pi4:/home/niryo/catkin_ws/src/my_niryo_robot




echo "Ready"
echo 
echo "Do not forget to build workspace and source it on the robot"
echo "Commands on the robot terminal:"
echo "$ cd ~/catkin_ws/"
echo "$ catkin_make clean" # not always nessery
echo "$ catkin_make"
echo "$ source devel/setup.bash"
