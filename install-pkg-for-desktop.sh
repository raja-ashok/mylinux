#!/bin/bash

source /etc/lsb-release

if [ -z $DISTRIB_RELEASE ] || [ -z $DISTRIB_ID ]; then
    echo "DISTRIB_RELEASE and DISTRIB_ID are not set"
else
    if [ $DISTRIB_ID == "Ubuntu" ]; then
        IFS='.' read -r -a distro_vers <<< $DISTRIB_RELEASE
        major_ver=${distro_vers[0]}
    fi
fi

sudo apt update

# Tools
sudo apt install tilix -y
# Install gnome tweak
if [ -z $major_ver ]; then
    echo "Major release version parsing failed"
else
    if [ $(($major_ver)) -ge 22 ]; then
        sudo apt install gnome-tweaks -y
    else
        sudo apt install gnome-tweak-tool -y
    fi
fi
sudo apt install gnome-shell-extensions -y
sudo apt install chrome-gnome-shell -y
sudo apt install sshpass -y

# Dev Tools
# wireshark installation requires interactive input
sudo apt install wireshark -y

# Doc
sudo apt install meld -y
sudo apt install hplip -y
sudo apt install jpegoptim -y
sudo apt install imagemagick -y
#sudo apt install notepadqq -y
# gedit is the text editor in gnome
sudo apt install gedit gedit-plugins -y

# pdf
sudo apt install gscan2pdf -y

# solaar for connecting Logitech devices to USB unifying device
sudo add-apt-repository ppa:solaar-unifying/stable
sudo apt update
sudo apt install solaar -y

# Utils
# Pkgs required for Zoom
sudo apt install libgl1-mesa-glx libegl1-mesa libxcb-xtest0 -y

# Install deb application
# chrome browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
