## 
# Usage
# bash a_download-untar.bash
#

VERSION=4.11.20210226 # check the link of the latest version here https://download.slicer.org/
cd ~/Downloads
mkdir -p 3dslicer 
cd 3dslicer
#wget https://download.slicer.org/bitstream/1442746
mv 1442746 Slicer-$VERSION-linux-amd64.tar.gz
tar xzvf Slicer-$VERSION-linux-amd64.tar.gz
rm Slicer-$VERSION-linux-amd64.tar.gz

