#!/bin/bash

PS3='Please enter your operating mode: '
options=("With fysical Niryo Ned Robot(Hotspot mode)" "With fysical Niryo Ned Robot(Wifi mode)" "With fysical Niryo Ned Robot(Ethernet mode)" "None")
select opt in "${options[@]}"
do
    case $opt in
        "With fysical Niryo Ned Robot(Hotspot mode)")
            echo "you chose With fysical Niryo Ned Robot(Hotspot mode)"
            cat $HOME/niryo_ned_support/environment/avans_banner.txt
            source $HOME/catkin_ws/install/release/ned/setup.bash
            source $HOME/niryo_ned_support/environment/hotspot_network.bash
            source $HOME/niryo_robot_ws/devel/setup.bash
            #roslaunch my_niryo_robot_hardware_interface hardware_interface_standalone.launch simulation_mode:=false
            sudo service niryo_robot_ros stop
            roslaunch my_niryo_robot_bringup niryo_ned_robot.launch
	    break
            ;;
        "With fysical Niryo Ned Robot(Wifi mode)")
            echo "you chose With fysical Niryo Ned Robot(Wifi mode)"
            cat $HOME/niryo_ned_support/environment/avans_banner.txt
            source $HOME/catkin_ws/install/release/ned/setup.bash
            source $HOME/niryo_ned_support/environment/wifi_network.bash
            source $HOME/niryo_robot_ws/devel/setup.bash
            #roslaunch my_niryo_robot_hardware_interface hardware_interface_standalone.launch simulation_mode:=false
            sudo service niryo_robot_ros stop
            roslaunch my_niryo_robot_bringup niryo_ned_robot.launch
            break
            ;;
        "With fysical Niryo Ned Robot(Ethernet mode)")
            echo "you chose With fysical Niryo Ned Robot(Ethernet mode)"
            cat $HOME/niryo_ned_support/environment/avans_banner.txt
            source $HOME/catkin_ws/install/release/ned/setup.bash
            source $HOME/niryo_ned_support/environment/ethernet_network.bash
            source $HOME/niryo_robot_ws/devel/setup.bash
            #roslaunch my_niryo_robot_hardware_interface hardware_interface_standalone.launch simulation_mode:=false
            sudo service niryo_robot_ros stop
            roslaunch my_niryo_robot_bringup niryo_ned_robot.launch
            break
            ;;
        "None")
            echo "you chose Without fysical Niryo Ned Robot"
            source $HOME/catkin_ws/devel/setup.bash
	    break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
