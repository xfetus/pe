# OpenZenROS under Ubuntu 20.04x64

## Download openzen and test LPMSB2 sensors
1. Run [download-openzen.bash](download-openzen.bash)
```
bash download-openzen.bash
```
if successful, you will see the following output:
```
.
.
.
[ 96%] Linking CXX executable OpenZenExample
[ 96%] Built target OpenZenExample
[ 97%] Building CXX object CMakeFiles/OpenZenTests.dir/src/test/streaming/SerializationTest.cpp.o
[ 98%] Building CXX object CMakeFiles/OpenZenTests.dir/src/test/OpenZenTests.cpp.o
[100%] Linking CXX executable OpenZenTests
[100%] Built target OpenZenTests
```

2. Test connected LPMSB2 sensors
Connect USB blutooth dongle and wwitch on LPMSB2 sensors. Then type the following lines in the terminal:
``` 
cd $HOME/Desktop/sandbox/openzen/build/examples
./OpenZenExample
Listing sensors:
[2020-11-08 19:43:38.011] [OpenZen_console] [info] Starting listing of Bluetooth devices
0: LPMSB2-53ED5B (Bluetooth)
1: LPMSB2-53ED58 (Bluetooth)
Provide an index within the range 0-1:
```

Reference: https://bitbucket.org/lpresearch/openzen/src/master/

## build ros package 
```
cd && mkdir -p catkin_ws/src && cd catkin_ws/src
git clone --recurse-submodules https://bitbucket.org/lpresearch/openzenros.git
# in ~/catkin_ws/src/openzenros/CMakeList.txt LINE32 change/save the "OFF" flag to ON:  SET(ZEN_BLUETOOTH "OFF" CACHE BOOL "Don't build bluetooth")
cd ~/catkin_ws
rm -rf build devel install
cd ~/catkin_ws && catkin_make #-DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
rospack profile #https://stackoverflow.com/questions/27053334/ros-package-not-found-after-catkin-make
```


### check the macs address of your LPMSVB2 imus:
1. Connect bluetooth dongle and switch on your LPMSVB2 
```
$hcitool dev
Devices:
	hci0	00:1A:7D:DA:71:13

$ hcitool scan
Scanning ...
	00:04:3E:53:ED:58	LPMSB2-53ED58
	00:04:3E:53:ED:5B	LPMSB2-53ED5B
```


### testing one sensor 
1. Launch roscore
```
roscore
```
2. Launch nodes
```
rosrun openzen_sensor openzen_sensor_node _sensor_interface:="Bluetooth" _sensor_name:="00:04:3E:53:ED:58"
#rosrun openzen_sensor openzen_sensor_node _sensor_name:="LPMSB2-53ED58"
#rosrun openzen_sensor openzen_sensor_node _sensor_interface:="LinuxDevice" _sensor_name:="00:04:3E:53:ED:58"
```
3. List ros topics
```
$ rostopic list
/imu/data
/imu/is_autocalibration_active
/imu/mag
/rosout
/rosout_agg
```

4. Plot values
open a new terminal to test available axis
```
rqt_plot rqt_plot /imu/data/linear_acceleration/x:y:z
rqt_plot rqt_plot /imu/data/orientation/w:x:y:z
rqt_plot rqt_plot /imu/data/angular_velocity/w:x:y:z
rqt_plot rqt_plot /imu/mag/magnetic_field/x:y:z
```


### two sensors
1. Launch roscore
```
roscore
```
2. Open two terminal to run nodes
```
rosrun openzen_sensor openzen_sensor_node __name:="nameimu1" _sensor_interface:="Bluetooth" _sensor_name:="00:04:3E:53:ED:58" imu:=/imu1
rosrun openzen_sensor openzen_sensor_node __name:="nameimu2" _sensor_interface:="Bluetooth" _sensor_name:="00:04:3E:53:ED:5B" imu:=/imu2
```

terminal output
```
rosrun openzen_sensor openzen_sensor_node __name:="nameimu1" _sensor_interface:="Bluetooth" _sensor_name:="00:00:00:00:00:00" imu:=/imu1
[ INFO] [1606675676.492008480]: Connecting directly to sensor 00:00:00:00:00:00 over interface Bluetooth
[ INFO] [1606675679.097546616]: IMU component found
[ INFO] [1606675679.097681830]: No GNSS component available, sensor won't provide Global positioning data
[ INFO] [1606675679.097833237]: Data streaming from sensor started
```


3. List topics
open a new terminal to test available axis
```
rostopic list
/imu1/data
/imu1/is_autocalibration_active
/imu1/mag
/imu2/data
/imu2/is_autocalibration_active
/imu2/mag
/rosout
/rosout_agg

```

4. Plot variables of imus
```
rqt_plot rqt_plot /imu1/data/linear_acceleration/x:y:z /imu2/data/linear_acceleration/x:y:z
```


### Launch files

00. Deactiave conda environments
```
conda deactivate
```

0. Copy launch files
```
cd ~/public-engagement-project/software/ros/openzen/launch_files
pwd
```
```
cd $HOME/catkin_ws/src/openzenros/launch
```
```
cp $PWD/*.launch .
```

1. one sensor 
```
roslaunch openzen_sensor openzen_lpms_b2_one.launch
```

2. two sensors
```
roslaunch openzen_sensor openzen_lpms_b2_two.launch 
```

```
rqt_plot rqt_plot /imu1/imu/data/linear_acceleration/x:y:z /imu2/imu/data/linear_acceleration/x:y:z
```

## References
https://bitbucket.org/lpresearch/openzenros/src/master/     
https://lpresearch.bitbucket.io/openzen/latest/ros.html#compilation     
