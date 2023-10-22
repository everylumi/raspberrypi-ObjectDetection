#!/bin/bash

# install pip and pip3
sudo apt -y install python-pip python3-pip

# remove old versions, if not placed in a virtual environment (let pip search for them)
pip uninstall tensorflow
pip3 uninstall tensorflow

# Get packages required for TensorFlow
sudo apt -y install gfortran
sudo apt -y install libhdf5-dev libc-ares-dev libeigen3-dev
sudo apt -y install libatlas-base-dev libopenblas-dev libblas-dev
sudo apt -y install liblapack-dev cython
#sudo -H pip3 install pybind11

# upgrade setuptools
pip3 install --upgrade setuptools
pip3 install pybind11
#pip3 install Cython

# install h5py with Cython version 0.29.23 (± 15 min @1500 MHz)
#pip3 install h5py==3.1.0
pip3 install h5py
#pip3 install -U numpy
pip3 install numpy==1.23.4

# Installation TensorFlow
#version=$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')

version=$(getconf LONG_BIT)

if [ $version == "32" ]; then
echo ""
echo "** 32 bit OS *********************"
wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v2.4.0/tensorflow-2.4.0-cp37-none-linux_armv7l.whl
pip3 install --upgrade tensorflow-2.4.0-cp37-none-linux_armv7l.whl
rm tensorflow-2.4.0-cp37-none-linux_armv7l.whl
fi

if [ $version == "64" ]; then
echo ""
echo "** 64 bit OS *********************"
#wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v2.4.0/tensorflow-2.4.0-cp37-none-linux_aarch64.whl
#pip3 install --upgrade tensorflow-2.4.0-cp37-none-linux_aarch64.whl
#rm tensorflow-2.4.0-cp37-none-linux_aarch64.whl

wget https://github.com/KumaTea/tensorflow-aarch64/releases/download/v2.4/tensorflow-2.4.1-cp37-cp37m-linux_aarch64.whl
pip3 install --upgrade tensorflow-2.4.1-cp37-cp37m-linux_aarch64.whl
rm tensorflow-2.4.1-cp37-cp37m-linux_aarch64.whl
fi