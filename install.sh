#!/bin/bash
#
# Script to Install
# linux System Tools and
# Basic Python Components
# 
# GENERAL LINUX
apt-get update # updates the package index cache
apt-get upgrade -y # updates package
# installs system tools
apt-get install -y bzip2 gcc git # system tools
apt-get install -y htop screen vim wget # system tools
apt-get upgrade -y bash # upgrades bash if necessary
apt-get clean # cleans the package index cache

# INSTALL MINICONDA
# downloads miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O \
Miniconda.sh
bash Miniconda.sh -b # installs it
rm -rf Miniconda.sh # removes the installer
export PATH="/root/miniconda3/bin:$PATH" # prepends the new path

# INSTALL PYTHON LIBRARIES
conda install -y pandas # install pandas
conda install -y ipython # installs IPython shell

# CUSTOMIZATION

cd /root/
wget http://hilpisch.com/.vimrc # Vim configuration