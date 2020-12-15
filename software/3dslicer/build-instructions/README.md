# Building 3DSlicer in:

## Help
https://github.com/Slicer/Slicer/issues


## Ubuntu 18.04x64
* dependencies



* CMake 


* Previous Release (3.18.5)

```  
sudo apt remove --purge --auto-remove cmake
```

```
version=3.18
build=5
mkdir ~/temp
cd ~/temp
wget https://cmake.org/files/v$version/cmake-$version.$build.tar.gz
tar -xzvf cmake-$version.$build.tar.gz
cd cmake-$version.$build/
```

```
./bootstrap
make
sudo make install
```

``` 
cmake --version
```



* Dependencies 
```
#cd ~/us-simulator/software/3dslicer/build-instructions

sh a_dependencies.sh
```



** issues with CMake version
```
wget -qO - https://apt.kitware.com/keys/kitware-archive-latest.asc |
    sudo apt-key add -
sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
sudo apt-get update
sudo apt-get install cmake
# https://stackoverflow.com/questions/49859457/how-to-reinstall-the-latest-cmake-version
```

```
cmake --version
cmake version 3.19.1
```

```  
-- Check the value of the 22nd bit of a 32-bit quiet-NaN
-- Check the value of the 22nd bit of a 32-bit quiet-NaN - 1
-- Found Perl: /usr/bin/perl (found version "5.26.1") 
-- Configuring done
CMake Error: install(EXPORT "ITKTargets" ...) includes target "gdcmjpeg8" more than once in the export set.
-- Generating done
CMake Generate step failed.  Build files cannot be regenerated correctly.
CMakeFiles/ITK.dir/build.make:129: recipe for target 'ITK-prefix/src/ITK-stamp/ITK-configure' failed
make[2]: *** [ITK-prefix/src/ITK-stamp/ITK-configure] Error 1
CMakeFiles/Makefile2:1109: recipe for target 'CMakeFiles/ITK.dir/all' failed
make[1]: *** [CMakeFiles/ITK.dir/all] Error 2
Makefile:113: recipe for target 'all' failed
make: *** [all] Error 2
# https://github.com/BlueQuartzSoftware/DREAM3DSuperbuild/issues/21
```

* QT version 5.10 


``` 
/home/pyapt/Desktop/sandbox/Slicer/Libs/MRML/Widgets/qMRMLSceneFactoryWidget.cxx:23:10: fatal error: QRandomGenerator: No such file or directory
 #include <QRandomGenerator>
          ^~~~~~~~~~~~~~~~~~
compilation terminated.
Libs/MRML/Widgets/CMakeFiles/qMRMLWidgets.dir/build.make:1299: recipe for target 'Libs/MRML/Widgets/CMakeFiles/qMRMLWidgets.dir/qMRMLSceneFactoryWidget.cxx.o' failed
make[5]: *** [Libs/MRML/Widgets/CMakeFiles/qMRMLWidgets.dir/qMRMLSceneFactoryWidget.cxx.o] Error 1
CMakeFiles/Makefile2:10251: recipe for target 'Libs/MRML/Widgets/CMakeFiles/qMRMLWidgets.dir/all' failed
make[4]: *** [Libs/MRML/Widgets/CMakeFiles/qMRMLWidgets.dir/all] Error 2
Makefile:181: recipe for target 'all' failed
make[3]: *** [all] Error 2
CMakeFiles/Slicer.dir/build.make:162: recipe for target 'Slicer-prefix/src/Slicer-stamp/Slicer-build' failed
make[2]: *** [Slicer-prefix/src/Slicer-stamp/Slicer-build] Error 2
CMakeFiles/Makefile2:454: recipe for target 'CMakeFiles/Slicer.dir/all' failed
make[1]: *** [CMakeFiles/Slicer.dir/all] Error 2
Makefile:113: recipe for target 'all' failed
make: *** [all] Error 2
#https://stackoverflow.com/questions/57647925/qrandomgenerator-no-such-file-or-directory
#If this is <5.10 you will need to update Qt. On Linux this means that you may have to download Qt from their website rather than through your package manager.
```


``` 
$ qtdiag
Qt 5.9.5 (x86_64-little_endian-lp64 shared (dynamic) release build; by GCC 7.4.0) on "xcb" 
OS: Ubuntu 18.04.3 LTS [linux version 4.15.0-123-generic]
```


```
#remove qt5.9.5 #https://stackoverflow.com/questions/39625379/how-to-uninstall-qt5
sudo apt autoremove '.*qt5.*-dev'
```


```  
#downalod 5.12.10 #http://download.qt.io/official_releases/qt/5.12/5.12.10/
#wget http://download.qt.io/official_releases/qt/5.9/5.9.1/qt-opensource-linux-x64-5.9.1.run
cd ~/Desktop/sandbox
wget http://download.qt.io/official_releases/qt/5.12/5.12.10/qt-opensource-linux-x64-5.12.10.run
chmod +x qt-opensource-linux-x64*
./qt-opensource-linux-x64*
``` 



``` 
Qt5 with the following components:
    Multimedia
    UiTools
    XMLPatterns
    SVG
    WebEngine
    Script
    X11Extras
    Private
```



```
#to set qt 5.10 as default edit:
sudo vim /usr/lib/x86_64-linux-gnu/qtchooser/default.conf
#with the following contents:
```

`/usr/lib/x86_64-linux-gnu/qtchooser/default.conf`
``` 
#/usr/lib/qt5/bin
#/usr/lib/x86_64-linux-gnu
/opt/Qt/5.12.10/gcc_64/bin
/opt/Qt/5.12.10/gcc_64/lib
```  

#https://askubuntu.com/questions/1062046/how-to-update-qt-from-5-5-1-to-5-9-5-on-ubuntu-16-04
#https://unix.stackexchange.com/questions/481063/ubuntu-18-04-1-lts-x64-how-to-update-qt-5-10-from-qt-5-9-5

#On Linux this means that you may have to download Qt from their website rather than through your package manager.
#https://stackoverflow.com/questions/57647925/qrandomgenerator-no-such-file-or-directory
#https://wiki.qt.io/Building_Qt_5_from_Git#Getting_the_source_code

```  
$ qmake -v
QMake version 3.1
Using Qt version 5.12.10 in /opt/Qt/5.12.10/gcc_64/lib
```

remove qt 5.12.10 
```  
rm -rf /opt/Qt
```

* using 5.14 and others
Refs: https://github.com/Slicer/Slicer/issues/4922; http://download.qt.io/official_releases/qt/

* issues
slicer building error in Ubuntu18.04 with default Qt version 5.9.5
  

```  

Hi All,

Following [build_instructions for Ubuntu 20.04](https://slicer.readthedocs.io/en/latest/developer_guide/build_instructions/linux.html) to build slicer in Ubuntu 18.04, I found one issue with the version of cmake which I have updated to version 3.19.1 [sorted out here](https://stackoverflow.com/questions/49859457/how-to-reinstall-the-latest-cmake-version). I am now in the point of selecting the right Qt version which has an issue (shown below). I am guessing that there should be a README to be able to have the right version with all the required components of Qt (Multimedia, UiTools, XMLPatterns, SVG, WebEngine, Script, X11Extras, Private). I then wonder if you have any recommendations on which Qt version is recommended and perhaps point out references on how to build qt with all those required components for slicer.


## Steps to reproduce
Follwoing [build_instructions for Ubuntu 20.04](https://slicer.readthedocs.io/en/latest/developer_guide/build_instructions/linux.html), the following error apears  while building slicer
``` 
$ cd Slicer-SuperBuild-Debug
$ make
~/Slicer/Libs/MRML/Widgets/qMRMLSceneFactoryWidget.cxx:23:10: fatal error: QRandomGenerator: No such file or directory
 #include <QRandomGenerator>
          ^~~~~~~~~~~~~~~~~~
compilation terminated.
Libs/MRML/Widgets/CMakeFiles/qMRMLWidgets.dir/build.make:1299: recipe for target 'Libs/MRML/Widgets/CMakeFiles/qMRMLWidgets.dir/qMRMLSceneFactoryWidget.cxx.o' failed
make[5]: *** [Libs/MRML/Widgets/CMakeFiles/qMRMLWidgets.dir/qMRMLSceneFactoryWidget.cxx.o] Error 1
CMakeFiles/Makefile2:10251: recipe for target 'Libs/MRML/Widgets/CMakeFiles/qMRMLWidgets.dir/all' failed
make[4]: *** [Libs/MRML/Widgets/CMakeFiles/qMRMLWidgets.dir/all] Error 2
Makefile:181: recipe for target 'all' failed
make[3]: *** [all] Error 2
CMakeFiles/Slicer.dir/build.make:162: recipe for target 'Slicer-prefix/src/Slicer-stamp/Slicer-build' failed
make[2]: *** [Slicer-prefix/src/Slicer-stamp/Slicer-build] Error 2
CMakeFiles/Makefile2:454: recipe for target 'CMakeFiles/Slicer.dir/all' failed
make[1]: *** [CMakeFiles/Slicer.dir/all] Error 2
Makefile:113: recipe for target 'all' failed
make: *** [all] Error 2
```


## Expected behaviour
I made a quick search and it seems that I do not have the right version of Qt. "If this is <5.10 you will need to update Qt. On Linux this means that you may have to download Qt from their website rather than through your package manager [ref](https://stackoverflow.com/questions/57647925/qrandomgenerator-no-such-file-or-directory)"  

## Environment
    Slicer version: latest commit in master 
    Operating system: GNU/Linux Ubuntu 18.04
    Qt version: 5.9.5
    gcc: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0
    cmake version 3.19.1
    OpenSSL 1.1.1  11 Sep 2018


 
```

https://github.com/Slicer/Slicer/issues/5343





* checking out source 
```
mkdir -p ~/Desktop/sandbox && cd ~/Desktop/sandbox
git clone git://github.com/Slicer/Slicer.git
```
*  set up the development environment:
``` 
cd Slicer
./Utilities/SetupForDevelopment.sh
 ```
* Configure and generate the Slicer build project files
``` 
mkdir -p Slicer-SuperBuild-Debug && cd Slicer-SuperBuild-Debug
cmake ../
```
* Build Slicer
This takes few hours (time depends on the hardware of your machine).
  
```
make
#start:Mon 14 Dec 00:11:43 GMT 2020
#end:  
```
* Run Slicer
After the building process has successfully completed, the executable file to run slicer will be located in 
```  
./Slicer-build/Slicer
```

## Ubuntu 20.04x64

# Reference 
https://slicer.readthedocs.io/en/latest/developer_guide/build_instructions/linux.html