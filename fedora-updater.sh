#!/bin/bash
clear

sudo echo -e "\033[1m\033[7mWELCOME TO MOHAMMAD'S FEDORA UPDATE SCRIPT!\033[0m\n"
sudo echo -e "\033[1m\033[7mTHIS WILL UPDATE SYSTEM RPM PACKAGES AND FLATPAKS\033[0m\n"
sudo echo -e "\033[1m\033[7mStarting system updates...\033[0m\n"

sudo flatpak -y update
sudo echo -e "\n"
sudo dnf -y update
sudo echo -e "\n"

echo "System updates have been completed. What would you like to do next?"
echo "1. Reboot"
echo "2. Power-off"
echo "3. Exit the Terminal"
echo -n "Please enter your choice (1-3): "

read choice

case $choice in
  1)
    sudo reboot
    ;;
  2)
    sudo poweroff
    ;;
  3)
    exit
    ;;
  *)
    echo "Invalid choice. Please choose 1, 2, or 3."
    ;;
esac