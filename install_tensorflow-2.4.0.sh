#!/bin/bash

# Get packages required for TensorFlow
sudo apt -y install gfortran
sudo apt -y install libhdf5-dev libc-ares-dev libeigen3-dev
sudo apt -y install libatlas-base-dev libopenblas-dev libblas-dev
sudo apt -y install liblapack-dev cython
sudo -H pip3 install pybind11
sudo -H pip3 install h5py==2.10.0
sudo pip3 install --upgrade numpy


# Installation TensorFlow

#version=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
#if [ $version == "3.7" ]; then
#wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v2.4.0/tensorflow-2.4.0-cp37-none-linux_armv7l.whl
#pip3 install tensorflow-2.0.0-cp37-none-linux_armv7l.whl
#rm tensorflow-2.0.0-cp37-none-linux_armv7l.whl
#fi

wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v2.4.0/tensorflow-2.4.0-cp37-none-linux_armv7l.whl
pip3 install tensorflow-2.4.0-cp37-none-linux_armv7l.whl
rm tensorflow-2.4.0-cp37-none-linux_armv7l.whl
