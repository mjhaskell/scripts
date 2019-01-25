#!/bin/sh

#Install ROS
echo_green "Install ROS Melodic for Ubuntu 16.04 LTS Xenial Xerus based off of wiki.ros.org installation guide"
echo_blue "Setup your sources.list"

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

echo_blue "Setup up your keys"
# this key could change if ROS ever updates it for whatever reason
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

echo_blue "Installation"

sudo apt update
sudo apt install ros-melodic-desktop-full

echo_blue "Initialize rosdep"

sudo rosdep init
rosdep update

sudo apt install python-rosinstall python-rosinstall-generator python-wstool

echo_green "ROS Melodic installed"