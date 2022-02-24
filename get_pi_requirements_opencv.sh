#!/bin/bash

# Get packages required for OpenCV
#1 developer tools
sudo apt -y install build-essential cmake pkg-config

#2 image I/O packages
sudo apt -y install libjpeg-dev libtiff5-dev libpng-dev

#3 video I/O packages
sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt -y install libxvidcore-dev libx264-dev

#4 the GTK development library and prerequisites: in order to compile the highgui
#4 which is used to display images to our screen and build basic GUIs.
sudo apt -y install libfontconfig1-dev libcairo2-dev
sudo apt -y install libgdk-pixbuf2.0-dev libpango1.0-dev
sudo apt -y install libgtk2.0-dev libgtk-3-dev

sudo apt -y install libtbb2 libtbb-dev libdc1394-22-dev
sudo apt -y install libv4l-dev v4l-utils
sudo apt -y install libopenblas-dev libatlas-base-dev libblas-dev
sudo apt -y install libprotobuf-dev libgoogle-glog-dev libgflags-dev
sudo apt -y install protobuf-compiler

#5 for optimized further
sudo apt -y install libatlas-base-dev gfortran

#6 for HDF5 datasets and Qt GUIs
sudo apt -y install libhdf5-dev libhdf5-serial-dev libhdf5-103
sudo apt -y install libqtgui4 libqtwebkit4 libqt4-test python3-pyqt5

#7 python3
sudo apt -y install python3-dev

#8 numpy
sudo pip3 install -U numpy
