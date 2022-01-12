#!/bin/bash


cd $HOME/niryo_robot_ws/src
echo "Updating urdf of robot..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_robot_description/urdf niryo@$ROS_MASTER:/home/niryo/catkin_ws/src/my_niryo_robot/my_niryo_robot_description

echo "Updating moveit config of robot..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_ned_moveit_config/config niryo@$ROS_MASTER:/home/niryo/catkin_ws/src/my_niryo_robot/my_niryo_ned_moveit_config

echo "Ready"
