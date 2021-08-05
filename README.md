# hsa_project
## docker 
: docker image and container generation code
- ros 
  * Ubuntu version: 20.04 
  * Target docker image: https://hub.docker.com/repository/docker/lhs223/unity
- unity
  * Ubuntu version: 18.04 
  * Target docker image: https://hub.docker.com/repository/docker/lhs223/ros_noetic

## host_install 
: .sh files for host PC setting (Ubuntu 18.04), which includes CUDA 11.4, (nvidia) docker, ROS melodic, geomagic Touch driver (USB version) with related ROS package (https://github.com/bharatm11/Geomagic_Touch_ROS_Drivers.git)

Guide
1) Download prerequsites in the "host_install" folder
    * **cudnn-11.4-linux-x64-v8.2.2.26.tgz** - cuDNN v8.2.2 for CUDA 11.4 from https://developer.nvidia.com/rdp/cudnn-download
    * **Openhaptics for Linux v3.4** and **Touch Device Driver v2019.2.15** from https://support.3dsystems.com/s/article/OpenHaptics-for-Linux-Developer-Edition-v34?language=en_US
3) Copy contents in 0_bashrc to ~/.bashrc -> source ~/.bashrc
4) Get permission to execute files by 
    * sudo chmod +x *
5) Execute files in order (1_ -> 2_ ...)

### Haptic device connection check
1. Check the device connection 
    * ls /dev/ttyACM0
    ![touch_connection_check](https://user-images.githubusercontent.com/17296297/128353021-ab5147e7-5a20-4a8a-a926-2e93a21575d8.png)
2. Change authority -> should be done whenever the haptic device is reconnected to the PC 
    * sudo chmod 777 /dev/ttyACM0
3. Make config file from Touch_Setup
    * sudo Touch_Setup -> check the serial number -> Apply and OK
    ![touch_setup](https://user-images.githubusercontent.com/17296297/128352776-650445cb-b3e9-4c7d-bcb1-d5491d7f15ea.png)
4. Test config file from Touch_Diagnostic
    * sudo Touch_Diagnostic 
    ![touch_diagnostic](https://user-images.githubusercontent.com/17296297/128353194-a2288eaf-11c2-400e-abf9-20ebeec4bef0.png)


## Related pages
### ros-control
http://gazebosim.org/tutorials/?tut=ros_control
http://wiki.ros.org/ros_control
http://www.theoj.org/joss-papers/joss.00456/10.21105.joss.00456.pdf

### Unity-ROS project
https://github.com/Unity-Technologies/Unity-Robotics-Hub/blob/main/tutorials/ros_unity_integration/publisher.md
https://github.com/fsstudio-team/ZeroSimROSUnity#setting-up-a-new-unity-project
https://github.com/Mediemanden/Unity3D-ROS-RL
