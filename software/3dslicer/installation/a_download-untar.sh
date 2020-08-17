## 
# usage sh a_download-untar.sh
#
VERSION=4.10.2 # check the link of the latest version here https://download.slicer.org/

cd ~/Downloads
mkdir -p 3dslicer 
cd 3dslicer
wget https://download.slicer.org/bitstream/1023242
mv 1023242 Slicer-$VERSION-linux-amd64.tar.gz
tar xzvf Slicer-$VERSION-linux-amd64.tar.gz
rm Slicer-$VERSION-linux-amd64.tar.gz

