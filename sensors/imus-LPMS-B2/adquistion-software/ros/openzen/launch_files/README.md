# Usage of launch files 

1. Copy launch files from repo to `catkin_ws`
```
cd $HOME/$REPO_PATH 
cd public-engagement-project/sensors/imus-LPMS-B2/adquistion-software/ros/openzen/launch_files
bash copy-launchs-to-catkin_ws.bash
```

2. Setup Hardware
* Connect Bluetooth dongle
* Connect USB camera 
* Switch on IMU sensors 

3. Using launch files
``` 
roslaunch openzen_sensor lpmsb2-two-usb_cam.launch
```

4. After debugging 
```
cd $HOME/$REPO_PATH 
cd public-engagement-project/sensors/imus-LPMS-B2/adquistion-software/ros/openzen/launch_files
bash copy-launchs-from-catkin_ws-to-repo.bash
```

