#!/bin/bash

cd $HOME/niryo_robot_ws/src

sshpass -p robotics ssh niryo@$ROS_CONTROLLER_IP "mkdir /home/niryo/niryo_robot_ws"
sshpass -p robotics ssh niryo@$ROS_CONTROLLER_IP "mkdir /home/niryo/niryo_robot_ws/src"


echo "Uploading  my_niryo_robot_hardware_interface files to robot..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_robot_hardware_interface niryo@$ROS_CONTROLLER_IP:/home/niryo/niryo_robot_ws/src

echo "Uploading  my_niryo_robot_description files to robot..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_robot_description niryo@$ROS_CONTROLLER_IP:/home/niryo/niryo_robot_ws/src


echo "Uploading  my_niryo_ned_moveit_config files to robot..."
sshpass -p robotics scp -r my_niryo_robot/my_niryo_ned_moveit_config niryo@$ROS_CONTROLLER_IP:/home/niryo/niryo_robot_ws/src




echo "Ready"
echo
echo "Do not forget to build workspace and source it on the robot"
echo "Commands on the robot terminal:"
echo "$ cd $HOME/niryo_robot_ws"
echo "$ catkin_make clean" # not always nessery
echo "$ catkin_make"
echo "$ source devel/setup.bash"
