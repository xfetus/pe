## 
# Usage
# bash a_download-untar.bash
#

# check the link of the latest version here 
# https://download.slicer.org/
# 
VERSION=4.11.20210226 
cd ~/Downloads
mkdir -p 3dslicer 
cd 3dslicer
wget https://download.slicer.org/bitstream/60add706ae4540bf6a89bf98
mv 60add706ae4540bf6a89bf98 Slicer-$VERSION-linux-amd64.tar.gz
tar xzvf Slicer-$VERSION-linux-amd64.tar.gz
rm Slicer-$VERSION-linux-amd64.tar.gz

