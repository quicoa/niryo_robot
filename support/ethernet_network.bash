#!/bin/bash
export ROS_CONTROLLER_IP=192.254.200.200
export ROS_DEVELOPMET_IP=192.168.0.120

export ROS_MASTER=$ROS_CONTROLLER_IP
export ROS_MASTER_URI=http://$ROS_CONTROLLER_IP:11311
export ROS_IP=$ROS_DEVELOPMENT_IP
