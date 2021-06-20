#!/bin/bash

apt install make gcc g++
apt install net-tools
apt install cloc

# Install python2.7
apt install python
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
python get-pip.py

# Install python3
apt install python3 python3-pip

# Tools
apt install gnome-tweak-tool

