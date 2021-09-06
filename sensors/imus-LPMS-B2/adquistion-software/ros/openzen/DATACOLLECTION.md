

## Recording and playing data with rosbag and roslaunch
1. Create path for dataset recordings
```
mkdir ~/bagfiles
cd ~/bagfiles
```


### Using Launch files 

0. Connect bluetoth dongle
1. Switch on sensors 58, 5B, 7E


1. three sensors
```
roslaunch openzen_sensor lpmsb2-three-usb_cam.launch
```

4. Debugging lauch lifes 
```
cd $HOME/catkin_ws/src/openzenros/launch
vim lpmsb2-3-usb_cam.launch

CHANGE THIS TO TRUE
<arg name="record_data" default="false" />



5. Record data
Modify launch file arguments `<arg name="record_imus_data" default="false" />` if you do not consider to record data at
```
cd $HOME/catkin_ws/src/openzenros/launch
roslaunch openzen_sensor lpmsb2-3-usb_cam.launch
```

6. Record video screen

Use SimpleRecorderd to record video in the screnn!



6. Playback data
```
roslaunch openzen_sensor lpmsb2-3-playback-data.launch 
```


5. Bacuckg chagnes


```
copy files to remote repo
```
cd $HOME/$REPO_PATH 
cd sensors/imus-LPMS-B2/adquistion-software/ros/openzen/launch_files
bash bash_copy-launchs-from-catkin_ws-to-repo.bash
```


