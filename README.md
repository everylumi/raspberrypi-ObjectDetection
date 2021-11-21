# raspberrypi-ObjectDetection
This is a method of detecting Object using Raspberry Pi 3/4.  

#### Origin
https://github.com/EdjeElectronics/TensorFlow-Lite-Object-Detection-on-Android-and-Raspberry-Pi


## requirements 

- Raspberry Pi 3 or 4
- 2021-05-07-raspios-buster
- Python 3.7 or above
- OpenCV 4
- TensorFlow 2.1.0 or above


## Installation

#### Step 1 clone repository
```sh
cd ~
git clone https://github.com/everylumi/raspberrypi-ObjectDetection.git
cd raspberrypi-ObjectDetection
```

#### Step 2 update Raspberry Pi OS to install OpenCV/TensorFlow
```sh
sudo apt update
sudo apt upgrade
```

#### Step 3 install OpenCV (skip, if installed already)
: 30minutes to install on RaspberryPi3
```sh
bash get_pi_requirements_opencv.sh
pip3 install opencv-contrib-python==4.1.0.25
```

#### Step 4 install tensorflow (skip, if installed already)
: 25minutes to install on RaspberryPi3  
```sh
bash install_tensorflow-2.4.0.sh
```
FYI, tensorflow releases  
https://github.com/lhelontra/tensorflow-on-arm/releases


#### Step 5 check version
```
python3
>>> import cv2
>>> cv2.__version__
>>> import tensorflow as tf
>>> tf.__version__
```

#### Step 6 install the-edge-TPU (if you have Coral USB Accelerator) - Optional
```
echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | sudo tee /etc/apt/sources.list.d/coral-edgetpu.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update

# Standard
sudo apt-get install libedgetpu1-std

# for Maximum freqency 
sudo apt-get install libedgetpu1-max

```


## Usage
```sh
cd ~/raspberrypi-ObjectDetection
python3 TFLite_detection_webcam.py --modeldir=Sample_TFLite_model
python3 TFLite_detection_video.py --modeldir=Sample_TFLite_model
python3 TFLite_detection_image.py --modeldir=Sample_TFLite_model

# Using Coral USB Accelerator
python3 TFLite_detection_webcam.py --modeldir=Sample_TFLite_model --edgetpu
python3 TFLite_detection_video.py --modeldir=Sample_TFLite_model --edgetpu
python3 TFLite_detection_image.py --modeldir=Sample_TFLite_model --edgetpu
```
![image](https://github.com/everylumi/raspberrypi-mnist/blob/main/doc/2021-11-21.png)


## License  
This project is licensed under the terms of the MIT license.