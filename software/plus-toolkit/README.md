# Plus toolkit
Plus is an open-source software toolkit for data acquisition, pre-processing, and calibration for navigated image-guided interventions. Plus was originally developed for ultrasound-guided interventions (hence the name, Plus - Public software Library for UltraSound imaging research) and it contains all essential functions for implementing tracked ultrasound systems, but it is now widely used in all kind of interventions, with and without ultrasound imaging.  [:link:](https://plustoolkit.github.io/).

## Installation 
### Under Windows OS 
* [PlusApp-2.8.0.20191105-Win64.exe	2020-05-20 07:36	102M](http://perk-software.cs.queensu.ca/plus/packages/stable/PlusApp-2.8.0.20191105-Win64.exe)
 PlusApp-…-Win64: Generic 64-bit release. Executables are 64-bit applications. It can record more frames in memory and reconstruct larger volumes than the 32-bit release but less hardware devices are supported
https://plustoolkit.github.io/download.html

* Destination folder with a 320MB of required space
``` 
C:\Users\$USERNAME\PlusApp-2.8.0.20191105-Win64
```

Install Plus Applications 2.8.0.2019-11-05 (Win64)
tick: allow access to private networks such as my home and work network


## Plus Server 
Terminal output from [PlusDeviceSet_Server_SimulatedUltrasound_3DSlicer.xml](../../software/examples/simulated-ultrasound/PlusDeviceSet_Server_SimulatedUltrasound_3DSlicer.xml) at [README](../../software/examples/simulated-ultrasound/README.md)
```
|INFO|467.647000| Connect using configuration file: C:\Users\mx19\Desktop\docs_mx_windows\github\us-simulator\software\examples\simulated-ultrasound\PlusDeviceSet_Server_SimulatedUltrasound_3DSlicer.xml| in E:\D\PSNP64b\PlusApp\PlusServerLauncher\PlusServerLauncherMainWindow.cxx(639)
|INFO|467.648000| Server process command line: "C:/Users/mx19/PlusApp-2.8.0.20191105-Win64/bin/PlusServer.exe" --config-file="PlusDeviceSet_Server_SimulatedUltrasound_3DSlicer.xml" --verbose=3| in E:\D\PSNP64b\PlusApp\PlusServerLauncher\PlusServerLauncherMainWindow.cxx(320)
|INFO|468.155000| Server process started successfully| in E:\D\PSNP64b\PlusApp\PlusServerLauncher\PlusServerLauncherMainWindow.cxx(329)
|WARNING|468.174000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.175000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.176000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.177000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.178000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.179000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.181000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulatoracquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.241000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.308000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.373000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.440000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.508000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.574000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.641000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.708000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.774000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.024). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|INFO|468.783000|SERVER> System start timestamp: 2017
|INFO|468.783000|SERVER> Software version: Plus-2.8.0.62873a16 - Win64
|INFO|468.785000|SERVER> Logging at level 3 (INFO) to file: C:/Users/mx19/PlusApp-2.8.0.20191105-Win64/data/121320_205433_PlusLog.txt
|INFO|468.787000|SERVER> Selected US image orientation: MF
|INFO|468.787000|SERVER> VideoDevice: Local time offset: 0ms
|INFO|468.788000|SERVER> Server status: Reading configuration.
|INFO|468.789000|SERVER> Server status: Connecting to devices.
|INFO|468.790000|SERVER> Simulated US image generation started. No tracking data was available between 0-0.024sec, therefore no simulated images were generated during this time period.
|INFO|468.790000|SERVER> Server status: Starting servers.
|INFO|468.792000|SERVER> Plus OpenIGTLink server listening on IPs: 169.254.180.48, 169.254.102.150, 169.254.139.224, 192.168.0.5, 127.0.0.1 -- port 18944
|INFO|468.833000|SERVER> Server status: Server(s) are running.
|INFO|468.835000|SERVER> Press Ctrl-C to quit.
|INFO|468.866000|SERVER> Received new client connection (client 1 at 127.0.0.1:18944). Number of connected clients: 1
|WARNING|468.908000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.525). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|468.976000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.525). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|INFO|468.984000|SERVER> OpenIGTLink broadcasting started. No data was available between 0-0.525sec, therefore no data were broadcasted during this time period.
|WARNING|469.042000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.525). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.108000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.525). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.175000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.525). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.243000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 0.525). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.376000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 1.026). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.442000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 1.026). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.507000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 1.026). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.574000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 1.026). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.640000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 1.026). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.706000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 1.026). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.772000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 1.026). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.905000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 1.527). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|469.971000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 1.527). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|WARNING|470.036000|SERVER> Simulated US image generation is skipped, as as no updated tracking data has become available since the last generated image (at 1.527). Probably the tracker device acquisition rate is lower than the simulator acquisition rate. Device ID: VideoDevice| in :\D\PSNP64b\PlusLib\src\PlusDataCollection\UsSimulatorVideo\vtkPlusUsSimulatorVideoSource.cxx(99)
|INFO|470.046000| Server process stop request sent successfully| in E:\D\PSNP64b\PlusApp\PlusServerLauncher\PlusServerLauncherMainWindow.cxx(512)
|INFO|471.755000| Server process stopped successfully| in E:\D\PSNP64b\PlusApp\PlusServerLauncher\PlusServerLauncherMainWindow.cxx(531)
|INFO|471.757000| Disconnect request successful| in E:\D\PSNP64b\PlusApp\PlusServerLauncher\PlusServerLauncherMainWindow.cxx(632)
```

* error
```
PlusServer.exe --config-file=PlusDeviceSet_Server_SimulatedUltrasound_3DSlicer.xml
System start timestamp: 1056                                                                                            
Software version: Plus-2.8.0.62873a16 - Win64                                                                           
Logging at level 3 (INFO) to file: C:/Users/mx19/PlusApp-2.8.0.20191105-Win64/data/052020_180631_PlusLog.txt            
Selected US image orientation: MF                                                                                       
VideoDevice: Local time offset: 0ms                                                                                     
Server status: Reading configuration.                                                                                   
Server status: Connecting to devices.                                                                                   
Debug: In E:\D\PSNP64b\Deps\OpenIGTLink\Source\igtlClientSocket.cxx, line 67                                            
igtl::ClientSocket (0000023FDBC1B140): Failed to connect to server 127.0.0.1:18946                                                                                                                                                              Debug: In E:\D\PSNP64b\Deps\OpenIGTLink\Source\igtlClientSocket.cxx, line 67                                            igtl::ClientSocket (0000023FDBC1B140): Failed to connect to server 127.0.0.1:18946                                                                                                                                                              Debug: In E:\D\PSNP64b\Deps\OpenIGTLink\Source\igtlClientSocket.cxx, line 67                                            igtl::ClientSocket (0000023FDBC1B140): Failed to connect to server 127.0.0.1:18946                                                                                                                                                              |ERROR|003.360000| Cannot connect to the server (127.0.0.1:18946).| in E:\D\PSNP64b\PlusLib\src\PlusDataCollection\OpenIGTLink\vtkPlusOpenIGTLinkDevice.cxx(152)                                                                                |ERROR|003.366000| TrackerDevice: Cannot connect to data source, ConnectInternal failed| in E:\D\PSNP64b\PlusLib\src\PlusDataCollection\vtkPlusDevice.cxx(1147)                                                                                 |ERROR|003.371000| Unable to connect device: TrackerDevice.| in E:\D\PSNP64b\PlusLib\src\PlusDataCollection\vtkPlusDataCollector.cxx(353)                                                                                                       |ERROR|003.376000| Datacollector failed to connect to devices| in E:\D\PSNP64b\PlusLib\src\PlusServer\Tools\PlusServer.cxx(106)                                                                      
```


### Under GNU/Linux OS 
https://plustoolkit.github.io/developersguide


## Reference
https://onedrive.live.com/view.aspx?resid=7230D4DEC6058018!3101&ithint=file%2cpptx&authkey=!AAUo9vahA2-tB7g
