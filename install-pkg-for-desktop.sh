#!/bin/bash

sudo apt update

# Tools
sudo apt install tilix -y
sudo apt install gnome-tweak-tool -y
sudo apt install gnome-shell-extensions -y
sudo apt install chrome-gnome-shell -y
sudo apt install sshpass -y

# Doc
sudo apt install meld -y
sudo apt install hplip -y
sudo apt install jpegoptim -y
sudo apt install imagemagick -y
sudo apt install notepadqq -y
# gedit is the text editor in gnome
sudo apt install gedit gedit-plugins -y

# pdf
sudo apt install gscan2pdf -y

# solaar for connecting Logitech devices to USB unifying device
sudo add-apt-repository ppa:solaar-unifying/stable
sudo apt update
sudo apt install solaar -y
