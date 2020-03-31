#!/bin/bash


##################################################
#   A Basic command set install script
##################################################

# Package List
# Python3 pip3 jq netcat  tmux


# Define some var ^__^
package_manger=apt
install_flag=-y
package_operation=install

#  echo $package_manger $install_flag
#  $package_manger $install_flag

sudo apt update
# Install jq
sudo $package_manger $package_operation   $install_flag jq

# Install python3
sudo $package_manger $package_operation   $install_flag python3

# Install pip
sudo $package_manger $package_operation   $install_flag python3-pip python-pip

# Install tmux
sudo $package_manger $package_operation   $install_flag tmux

# Install curl
sudo $package_manger $package_operation   $install_flag curl

# Install git
sudo $package_manger $package_operation   $install_flag git

# Install nmap
sudo $package_manger $package_operation   $install_flag nmap

# Install Go
sudo $package_manger $package_operation   $install_flag golang-go

# Install a web server nginx
sudo $package_manger $package_operation   $install_flag nginx
sudo systemctl stop nginx

# Install a web server docker and docker-compose
sudo $package_manger $package_operation   $install_flag  docker #docker-compose
########## There's a login bug, couldn't login after install docker-compose



############ ***************************
# Develop And Debug Tools
############ ***************************

# Install binutils
# sudo $package_manger $package_operation   $install_flag binutils

# Install build-essential
# sudo $package_manger $package_operation   $install_flag build-essential



echo "All work Done, and DO docker login before install docker-compoes"



