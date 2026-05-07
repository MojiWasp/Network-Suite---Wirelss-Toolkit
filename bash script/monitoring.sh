#!/bin/bash

#GitHub = MojiWasp
echo "----------------------------------------------------"
echo "S key for start monitoring"

echo "... when you are enter X key => monitoring will stop ..."
echo "after stop monitoring run bash script again and press the 'x' key"
echo "----------------------------------------------------"

read -n 1 -s key

if [[ $key == "s" || $key == "S" ]] ; then
echo ""
echo "updating system..."
sudo apt update

echo "install aircrack-ng..."
sudo apt install aircrack-ng -y

echo "start monitor mode"
sudo airmon-ng start wlan0

echo "start dump"
sudo airodump-ng wlan0mon
echo ""

if [[ $key == "X" || $key == "x" ]] ; then
sudo airmon-ng stop wlan0mon
sudo airmon-ng stop wlan0
sudo systemctl restart NetworkManager

fi

else
echo ""
echo "github = MojiWasp"
fi
