OpenCV-Installation
Install OpenCV 3.3.1 in Ubuntu 16.04

In this post, I will describe step by step instructions for installing OpenCV 3 (C++) on Ubuntu.
Step 1: Update Package

    sudo apt-get update
    sudo apt-get upgrade

Step 2: Install OS Libraries

    sudo apt-get install build-essential checkinstall cmake pkg-config yasm
    sudo apt-get install git gfortran
    sudo apt-get install libjpeg8-dev libjasper-dev libpng12-dev
    sudo apt-get install libtiff4-dev
    sudo apt-get install libtiff5-dev
    sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
    sudo apt-get install libxine2-dev libv4l-dev
    sudo apt-get install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
    sudo apt-get install qt5-default libgtk2.0-dev libtbb-dev
    sudo apt-get install libatlas-base-dev
    sudo apt-get install libfaac-dev libmp3lame-dev libtheora-dev
    sudo apt-get install libvorbis-dev libxvidcore-dev
    sudo apt-get install libopencore-amrnb-dev libopencore-amrwb-dev
    sudo apt-get install x264 v4l-utils

Step 3: Download OpenCV

    git clone https://github.com/opencv/opencv.git

    cd opencv

    git checkout 3.3.1

    cd ..

    git clone https://github.com/opencv/opencv_contrib.git

    cd opencv_contrib

    git checkout 3.3.1

    cd ..

    cd opencv

    mkdir build

    cd build

Step 4: Compile

    cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=opencv/path -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D OPENCV_EXTRA_MODULES_PATH=/extra/module/path -D BUILD_EXAMPLES=ON ..

Step 5: Compile and Install

find out number of CPU cores in your machine

    nproc substitute 4 by output of nproc
    make -j4
    sudo make install
    sudo sh -c 'echo "/usr/local/lib" >> /etc/ld.so.conf.d/opencv.conf'
    sudo ldconfig


https://medium.com/@vivek.yadav/deep-learning-setup-for-ubuntu-16-04-tensorflow-1-2-keras-opencv3-python3-cuda8-and-cudnn5-1-324438dd46f0
