#!/bin/bash

echo_blue "installing gimp"

sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install gimp

echo_green "gimp installed"