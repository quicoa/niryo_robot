#!/bin/bash
export ROS_CONTROLLER_IP=10.10.10.10
export ROS_DEVELOP_IP=10.10.10.120

export ROS_MASTER=$ROS_CONTROLLER_IP
export ROS_MASTER_URI=http://$ROS_CONTROLLER_IP:11311
export ROS_IP=$ROS_DEVELOP_IP
