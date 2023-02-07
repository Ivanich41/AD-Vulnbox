#!/usr/bin/bash 
uid=$(whoami)
if [[ $uid != root ]]
then
    echo "This provided to be run as root"
    exit 0
fi 
ip link set enp0s8 up
dhclient enp0s8
