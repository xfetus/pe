# OpenZenROS

## References
https://bitbucket.org/lpresearch/openzenros/src/master/     
https://lpresearch.bitbucket.io/openzen/latest/ros.html#compilation     


# test your LPMSB2 with openzen
```
mkdir ~/Desktop/sandbox && cd ~/Desktop/sandbox
sudo apt-get install gcc-7
git clone --recurse-submodules https://bitbucket.org/lpresearch/openzen.git
cd openzen
mkdir build && cd build && cmake .. #Create a build folder and run cmake:
make -j4 #&& examples/OpenZenExample # Compile and run the OpenZenExample:
```

```
/build/examples$ ./OpenZenExample
Listing sensors:
[2020-11-08 19:43:38.011] [OpenZen_console] [info] Starting listing of Bluetooth devices
0: LPMSB2-53ED5B (Bluetooth)
1: LPMSB2-53ED58 (Bluetooth)
Provide an index within the range 0-1:
```

Reference: https://bitbucket.org/lpresearch/openzen/src/master/

# build ros package 
```
cd && mkdir -p catkin_ws/src && cd catkin_ws/src
git clone --recurse-submodules https://bitbucket.org/lpresearch/openzenros.git
# in CMakeList.txt L32 change/save the following flag to ON:  SET(ZEN_BLUETOOTH OFF CACHE BOOL "Don't build bluetooth")
cd ~/catkin_ws
rm -rf build devel install
catkin_make #-DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
rospack profile #https://stackoverflow.com/questions/27053334/ros-package-not-found-after-catkin-make
```


## check the macs for your imus:
Turn on your LPMSVB2
```
$hcitool dev
Devices:
	hci0	00:1A:7D:DA:71:13

$ hcitool scan
Scanning ...
	00:04:3E:53:ED:58	LPMSB2-53ED58
	00:04:3E:53:ED:5B	LPMSB2-53ED5B
```


## testing one sensor 

```
roscore
```

```
rosrun openzen_sensor openzen_sensor_node _sensor_interface:="Bluetooth" _sensor_name:="00:04:3E:53:ED:58"
#rosrun openzen_sensor openzen_sensor_node _sensor_name:="LPMSB2-53ED58"
#rosrun openzen_sensor openzen_sensor_node _sensor_interface:="LinuxDevice" _sensor_name:="00:04:3E:53:ED:58"
```

```
$ rostopic list
/imu/data
/imu/is_autocalibration_active
/imu/mag
/rosout
/rosout_agg
```

* open a new terminal to test available axis
```
rosrun rqt_plot rqt_plot /imu/data/linear_acceleration/x:y:z
rosrun rqt_plot rqt_plot /imu/data/orientation/w:x:y:z
rosrun rqt_plot rqt_plot /imu/data/angular_velocity/w:x:y:z
rosrun rqt_plot rqt_plot /imu/mag/magnetic_field/x:y:z
```


## two sensors

```
roscore
```

```
rosrun openzen_sensor openzen_sensor_node __name:="nameimu1" _sensor_interface:="Bluetooth" _sensor_name:="00:04:3E:53:ED:58" imu:=/imu1
rosrun openzen_sensor openzen_sensor_node __name:="nameimu2" _sensor_interface:="Bluetooth" _sensor_name:="00:04:3E:53:ED:5B" imu:=/imu2
```


output

```
rosrun openzen_sensor openzen_sensor_node __name:="nameimu1" _sensor_interface:="Bluetooth" _sensor_name:="00:00:00:00:00:00" imu:=/imu1
[ INFO] [1606675676.492008480]: Connecting directly to sensor 00:00:00:00:00:00 over interface Bluetooth
[ INFO] [1606675679.097546616]: IMU component found
[ INFO] [1606675679.097681830]: No GNSS component available, sensor won't provide Global positioning data
[ INFO] [1606675679.097833237]: Data streaming from sensor started
```




* open a new terminal to test available axis
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

```
rosrun rqt_plot rqt_plot /imu1/data/linear_acceleration/x:y:z /imu2/data/linear_acceleration/x:y:z

```


## Lauch 

* one sensor 
```
roslaunch openzen_sensor openzen_lpms_b2_one.launch
```

*  two sensors


```
roslaunch openzen_sensor openzen_lpms_b2_two.launch 
```
```
rosrun rqt_plot rqt_plot /imu1/imu/data/linear_acceleration/x:y:z /imu2/imu/data/linear_acceleration/x:y:z
```
