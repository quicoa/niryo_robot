#!/bin/bash


sudo apt install sshpass
#cd $HOME/niryo_robot_ws/src
cd ../..
git  clone https://github.com/NiryoRobotics/ned_ros.git
#cd $HOME/niryo_robot_ws/
cd ..
catkin b

