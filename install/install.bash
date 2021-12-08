#!/bin/bash


sudo apt install sshpass
cd $HOME/niryo_robot_ws/src
git  clone https://github.com/NiryoRobotics/ned_ros.git

cd $HOME/niryo_robot_ws/
catkin b

