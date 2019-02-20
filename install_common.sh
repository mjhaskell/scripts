#!/bin/bash

sudo apt update
sudo apt upgrade

echo_blue "installing common"

sudo apt install zsh curl
sudo apt install vim exfat-utils exfat-fuse htop ssh vlc mesa-utils
sudo apt install mesa-utils-extra build-essential manpages-dev libeigen3-dev 
sudo apt install libopenblas-dev liblapacke-dev tesseract-ocr libtesseract-dev 
sudo apt install libleptonica-dev libboost-all-dev libtbb-dev ocl-icd-opencl-dev
sudo apt install ocl-icd-libopencl1 opencl-headers clinfo libffi6 libffi-dev gcc
sudo apt install cmake pybind11-dev gdb libtool make libcanberra-gtk-module 
sudo apt install gedit software-properties-common xclip tmux
sudo apt install python-dev python-pip python3-dev python3-pip python3-tk
sudo apt install simplescreenrecorder 

echo_green "common installed"
