#!/bin/bash

cd $HOME/niryo_robot_ws/src
echo "Uploading files to robot..."
sshpass -p robotics scp -r my_niryo_robot niryo@niryo_pi4:/home/niryo/catkin_ws/src
echo "Removing git repository on robot..."
sshpass -p robotics ssh niryo@niryo_pi4 "rm -rf /home/niryo/catkin_ws/src/my_niryo_robot/.git"
echo "Ready"
echo 
echo "Do not forget to build workspace and source it on the robot"
echo "Commands on the robot terminal:"
echo "$ cd ~/catkin_ws/"
echo "$ catkin_make clean" # not always nessery
echo "$ catkin_make"
echo "$ source devel/setup.bash"
