#!/bin/bash

apt install make gcc g++ -y
apt install net-tools -y
apt install cloc -y

# Install python2.7
apt install python -y
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
python get-pip.py

# Install python3
apt install python3 python3-pip -y

# Tools
apt install gnome-tweak-tool -y

# Doc
apt install meld -y
apt install hplip -y
apt install jpegoptim -y
apt install imagemagick -y
apt install notepadqq -y

# Utils
apt install tree -y
