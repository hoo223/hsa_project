# hsa_project
## docker 
: docker image and container generation code
- ros ->  20.04
- unity -> 18.04

## host_install 
: .sh files for host PC setting (Ubuntu 18.04), which includes CUDA 11.4, (nvidia) docker, ROS melodic, geomagic Touch driver (USB version) with related ROS package (https://github.com/bharatm11/Geomagic_Touch_ROS_Drivers.git)

Guide
1) Download cuDNN v8.2.2 for CUDA 11.4 in host_install folder from https://developer.nvidia.com/rdp/cudnn-download
2) Get permission to execute files by 
  sudo chmod +x *
3) Execute files in order (1_ -> 2_ ...)
