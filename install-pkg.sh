#!/bin/bash

sudo apt update

# Tools
sudo apt install make gcc g++ -y
sudo apt install net-tools -y
sudo apt install cloc -y
sudo apt install moreutils -y

# Install python2.7
#sudo apt install python -y
#curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
#python get-pip.py

# Install python3
sudo apt install python3 python3-pip -y

# Utils
sudo apt install tree -y

