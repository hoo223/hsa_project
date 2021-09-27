# host_install
: .sh files for host PC setting (Ubuntu 18.04), which include CUDA 11.4, (nvidia) docker, ROS melodic, geomagic Touch driver (USB version) with related ROS package (https://github.com/bharatm11/Geomagic_Touch_ROS_Drivers.git)

### Install Guide
1) Download prerequsites and locate the files in the "host_install" directory
    * **cudnn-11.4-linux-x64-v8.2.2.26.tgz** - cuDNN v8.2.2 for CUDA 11.4 from https://developer.nvidia.com/rdp/cudnn-download
    * **Openhaptics for Linux v3.4** and **Touch Device Driver v2019.2.15** from https://support.3dsystems.com/s/article/OpenHaptics-for-Linux-Developer-Edition-v34?language=en_US
2) Copy contents in 0_bashrc to ~/.bashrc -> source ~/.bashrc
3) Execute prerequisite commands
   > sudo apt update    
   > sudo apt install -y git terminator curl    
   > sudo sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list    
#### At "host_install" directory
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

### Haptic Device Connection Check
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
