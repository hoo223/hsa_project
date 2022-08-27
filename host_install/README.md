# host_install
: .sh files for host PC setting (Ubuntu 18.04), which include CUDA 11.4, (nvidia) docker, ROS melodic, geomagic Touch driver (USB version) with related ROS package (https://github.com/bharatm11/Geomagic_Touch_ROS_Drivers.git)

## Install Guide
1) Download prerequsites and locate the files in the "host_install" directory
    * **cudnn-11.4-linux-x64-v8.2.2.26.tgz** - cuDNN v8.2.2 for CUDA 11.4 from https://developer.nvidia.com/rdp/cudnn-download
    * **Openhaptics for Linux v3.4** and **Touch Device Driver v2019.2.15** from https://support.3dsystems.com/s/article/OpenHaptics-for-Linux-Developer-Edition-v34?language=en_US
2) 
   * Open ~/.bashrc
      > gedit ~/.bashrc
   * Copy contents in '0_bashrc' and paste to the end of the '~/.bashrc' -> Save and close
   * Source the file
      > source ~/.bashrc
3) Execute prerequisite commands
   > sudo apt update    
   > sudo apt install -y git terminator curl    
   > sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list    
### At "host_install" directory
4) Get permission to execute files by 
   > sudo chmod +x *
5) Install CUDA
   > ./2_cuda.sh
6) Install docker
   > ./3_docker.sh      
   > sudo usermod -aG docker $USER     
   > newgrp docker
7) Install nvidia-docker
   > ./4_nvidia_docker.sh
8) Install ros
   > ./5_ros.sh      
   > source ~/.bashrc      
   > cd ~/catkin_ws && catkin_make     
9) Install haptic driver
   > ./6_haptic_driver.sh
   
   Reboot after install    
10) Install haptic packages
      > ./7_haptic_package.sh

## Haptic Device Connection Check
1. Check the device connection 
    > ls /dev/ttyACM0      
    
    ![touch_connection_check](https://user-images.githubusercontent.com/17296297/128353021-ab5147e7-5a20-4a8a-a926-2e93a21575d8.png)
2. Change authority -> should be done whenever the haptic device is reconnected to the PC 
    > sudo chmod 777 /dev/ttyACM0
    
3. Make config file from Touch_Setup
    > sudo Touch_Setup 
    
    -> check the serial number -> Apply and OK
    
    ![touch_setup](https://user-images.githubusercontent.com/17296297/128352776-650445cb-b3e9-4c7d-bcb1-d5491d7f15ea.png)
4. Test config file from Touch_Diagnostic
    > sudo Touch_Diagnostic 

    ![touch_diagnostic](https://user-images.githubusercontent.com/17296297/128353194-a2288eaf-11c2-400e-abf9-20ebeec4bef0.png)

# Additional Devices
## ZED2 camera
1. Download the SDK     
https://www.stereolabs.com/developers/release/ -> ZED SDK for Ubuntu18 (CUDA 11.X)
=> ZED_SDK_Ubuntu18_cuda11.4_v3.6.1.run

2. Install the SDK
Run the downloaded file and install
   ~~~
   $ ./ZED_SDK_Ubuntu18_cuda11.4_v3.6.1.run
   ~~~

3. Download and build the zed-ros-warpper package
   ~~~
   $ cd ~/catkin_ws/src
   $ git clone --recursive https://github.com/stereolabs/zed-ros-wrapper.git
   $ cd ../
   $ rosdep install --from-paths src --ignore-src -r -y
   $ catkin_make -DCMAKE_BUILD_TYPE=Release
   $ source ./devel/setup.bash
   ~~~

4. Test the camera
   ~~~
   $ ZED_Diagnostic
   ~~~

### References
[zed ros github](https://github.com/stereolabs/zed-ros-wrapper)      
[How to Install ZED SDK on Linux](https://www.stereolabs.com/docs/installation/linux/)    

### 주의사항
ZED2 SDK 설치 후 햅틱 드라이버 초기화되어 다시 설치해야함 -> ZED2 SDK부터 설치 후 햅틱 드라이버 설정하기

## Robotiq Gripper & F/T sensor

## Realsense D435 camera

