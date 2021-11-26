#!/bin/bash

version=$(getconf LONG_BIT)

if [ $version == "64" ]; then

# get a fresh start (remember, the 64-bit OS is still under development)
# sudo apt-get update
# sudo apt-get upgrade

# install pip and pip3
sudo apt -y install python-pip python3-pip

# remove old versions, if not placed in a virtual environment (let pip search for them)
sudo pip uninstall tensorflow
sudo pip3 uninstall tensorflow

# utmost important: use only numpy version 1.19.5
# check the version first
pip3 list | grep numpy

# if not version 1.19.5, update!
sudo -H pip3 install numpy==1.19.5

# install the dependencies (if not already onboard)
sudo apt -y install gfortran
sudo apt -y install libhdf5-dev libc-ares-dev libeigen3-dev
sudo apt -y install libatlas-base-dev libopenblas-dev libblas-dev
sudo apt -y install liblapack-dev

# upgrade setuptools 40.8.1 -> 57.4.0
sudo -H pip3 install --upgrade setuptools
sudo -H pip3 install pybind11
sudo -H pip3 install Cython

# install h5py with Cython version 0.29.23 (± 15 min @1500 MHz)
sudo -H pip3 install h5py==3.1.0

# install TensorFlow 2.6.0 (± 68 min @1500 MHz)
wget https://github.com/KumaTea/tensorflow-aarch64/releases/download/v2.6/tensorflow-2.6.0-cp39-cp39-linux_aarch64.whl
pip3 install tensorflow-2.6.0-cp39-cp39-linux_aarch64.whl
rm tensorflow-2.6.0-cp39-cp39-linux_aarch64.whl

fi