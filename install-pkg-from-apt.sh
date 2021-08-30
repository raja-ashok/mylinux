#!/bin/bash

apt install make gcc g++ -y
apt install net-tools -y
apt install cloc -y
apt install moreutils

# Install python2.7
apt install python -y
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
python get-pip.py

# Install python3
apt install python3 python3-pip -y

# Tools
apt install tilix -y
apt install gnome-tweak-tool -y
apt install gnome-shell-extensions -y
apt install chrome-gnome-shell -y
apt install sshpass -y

# Doc
apt install meld -y
apt install hplip -y
apt install jpegoptim -y
apt install imagemagick -y
apt install notepadqq -y
# gedit is the text editor in gnome
apt install gedit gedit-plugins -y

# pdf
apt install gscan2pdf -y

# Utils
apt install tree -y
