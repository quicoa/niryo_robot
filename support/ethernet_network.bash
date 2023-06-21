IP=`ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/'`

export ROS_CONTROLLER_IP=169.254.200.200
export ROS_DEVELOPMENT_IP=${IP}
#export ROS_DEVELOPMENT_IP=169.254.175.100

export ROS_MASTER=$ROS_CONTROLLER_IP
export ROS_MASTER_URI=http://$ROS_CONTROLLER_IP:11311
export ROS_IP=$ROS_DEVELOPMENT_IP
