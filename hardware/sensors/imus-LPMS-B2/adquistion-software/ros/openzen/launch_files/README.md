# Usage of launch files 

1. Copy launch files from repo to `catkin_ws`
```
cd $HOME/$REPO_PATH 
cd sensors/imus-LPMS-B2/adquistion-software/ros/openzen/launch_files
bash bash_copy-launchs-to-catkin_ws.bash
```

2. Setup Hardware
* Connect Bluetooth dongle
* Connect USB camera 
* Switch on IMU sensors 

3. Using launch files
``` 
roslaunch openzen_sensor lpmsb2-two-usb_cam.launch
```

4. Debugging lauch lifes 
```
cd $HOME/catkin_ws/src/openzenros/launch
vim *.yml

CHANGE THIS TO TRUE
<arg name="record_data" default="false" />

```

3. Recording launch files
``` 
roslaunch openzen_sensor lpmsb2-two-usb_cam.launch
```

4. copy files to remote repo
```
cd $HOME/$REPO_PATH 
cd sensors/imus-LPMS-B2/adquistion-software/ros/openzen/launch_files
bash bash_copy-launchs-from-catkin_ws-to-repo.bash
```

