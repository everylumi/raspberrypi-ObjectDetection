#!/bin/bash

# Pre Configuation after Raspi OS
#GPU Memory Up to 128
#sudo raspi-config -> Performance Options -> GPU Memory -> input 128

# In case of raspberry pi 4
#EEPROM Check
#sudo rpi-eeprom-update  -> check, BOOTLOADER: up to date
#EEPROM Update
#sudo rpi-eeprom-update -a && reboot

# Get packages required for OpenCV
#1 developer tools
sudo apt -y install build-essential cmake git unzip pkg-config

#2 image I/O packages
sudo apt -y install libjpeg-dev libtiff5-dev libpng-dev

#3 video I/O packages
sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt -y install libxvidcore-dev libx264-dev

#4 the GTK development library and prerequisites: in order to compile the highgui
#4 which is used to display images to our screen and build basic GUIs.
sudo apt -y install libfontconfig1-dev libcairo2-dev
sudo apt -y install libgdk-pixbuf2.0-dev libpango1.0-dev
sudo apt -y install libgtk2.0-dev libcanberra-gtk* libgtk-3-dev
sudo apt -y install libjasper-dev

version=$(getconf LONG_BIT)
if [ $version == "64" ]; then
echo ""
echo "** 64 bit OS *********************"
sudo apt -y install libtbb2 libtbb-dev libdc1394-22-dev
sudo apt -y install libv4l-dev v4l-utils
sudo apt -y install libopenblas-dev libatlas-base-dev libblas-dev
sudo apt -y install libprotobuf-dev libgoogle-glog-dev libgflags-dev
sudo apt -y install protobuf-compiler
fi

#5 for optimized further
sudo apt -y install libatlas-base-dev gfortran

#6 for HDF5 datasets and Qt GUIs
sudo apt -y install libhdf5-dev libhdf5-serial-dev libhdf5-103
sudo apt -y install libqtwebkit4 libqt4-test python3-pyqt5
#sudo apt -y install libqtgui4

#7 python3
sudo apt -y install python3-dev

#8 Optional, install Qt5 to beautiful OpenCV GUI
sudo apt-get install qt5-default -y

#9 upgrade wheel
python3 -m pip install --upgrade pip
#sudo -H pip3 install --upgrade pip setuptools wheel
#sudo -H pip3 install --upgrade pip

#10 install the PiCamera API
pip3 install "picamera[array]"

#11 numpy
#pip3 install -U numpy
pip3 install numpy==1.23.4
