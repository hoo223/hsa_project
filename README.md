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
1) Download cuDNN v8.2.2 for CUDA 11.4 in host_install folder from https://developer.nvidia.com/rdp/cudnn-download
2) Get permission to execute files by 
  sudo chmod +x *
3) Execute files in order (1_ -> 2_ ...)


## Related pages
### ros-control
http://gazebosim.org/tutorials/?tut=ros_control
http://wiki.ros.org/ros_control
http://www.theoj.org/joss-papers/joss.00456/10.21105.joss.00456.pdf

### Unity-ROS project
https://github.com/Unity-Technologies/Unity-Robotics-Hub/blob/main/tutorials/ros_unity_integration/publisher.md
https://github.com/fsstudio-team/ZeroSimROSUnity#setting-up-a-new-unity-project
https://github.com/Mediemanden/Unity3D-ROS-RL
