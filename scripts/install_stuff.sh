#!/usr/bin/bash 
uid=$(whoami)
if [[ $uid != root ]]
then
    echo "This provided to be run as root"
    exit 0
fi 
apt update 
apt install -y neovim tmux tldr curl htop git openvpn