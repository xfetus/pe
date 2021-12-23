#!/bin/bash

mkdir ~/Desktop/sandbox && cd ~/Desktop/sandbox
sudo apt-get install gcc-7
git clone --recurse-submodules https://bitbucket.org/lpresearch/openzen.git
cd openzen
mkdir build && cd build && cmake .. #Create a build folder and run cmake:
make -j4 #&& examples/OpenZenExample # Compile and run the OpenZenExample:

