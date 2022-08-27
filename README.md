# hsa_project
## [docker](https://github.com/hoo223/hsa_project/tree/master/docker)
: docker image and container generation code
   * [docker_images](https://github.com/hoo223/hsa_project/tree/master/docker/docker_images)
   * [docker_containers](https://github.com/hoo223/hsa_project/tree/master/docker/docker_containers)

## [host_install](https://github.com/hoo223/hsa_project/tree/master/host_install)
: .sh files for host PC setting (Ubuntu 18.04), which include
* CUDA 11.4
* (nvidia) docker    
* ROS melodic    
* geomagic Touch driver (USB version) with related ROS package (https://github.com/bharatm11/Geomagic_Touch_ROS_Drivers.git)   

***

## How to Run
### Docker container
#### commands
start contianer -> docker start [CONTAINER_NAME]   
attach to container -> docker attach [CONTAINER_NAME]    
additional terminal -> docker exec -it [CONTAINER_NAME] bash   

#### shortcut

|container name|command(start)|command(attach)|command(exec)|command(start & attach)|
|--|--|--|--|--|
|core|cs|ca|ce|core|
|unity|us|ua|ue|unity|
|ur10|urs|ura|ure|ur10|
|indy|is|ia|ie|indy|

### Teleoperation
1. Gazebo
    * Host PC (Terminal 1)    
        ```
        hp
        haptic
        ```
    * core container (Terminal 2~4)   
        terminal 2
        ~~~
        ursim
        ~~~
        terminal 3
        ~~~
        interface_v
        ~~~
        terminal 4
        ~~~
        teleop
        ~~~

2. Unity
    * Host PC (Terminal 1)    
        ```
        hp
        haptic
        ```
    * unity contatiner (Terminal 2)   
        ```
        unity
        ```
        run the project and start     
    * core container (Terminal 3~4)    
        terminal 3    
        ~~~
        unity_bringup
        ~~~
        terminal 4
        ~~~
        teleop_unity
        ~~~
  
        
3. Real UR10
    * Host PC (Terminal 1)
        ```
        hp
        haptic
        ```
    * ur10 contatiner (Terminal 2)
        ```
        ur10_tcp
        ```
    * Teachpendent   
        1) run program   
        2) load program -> ExternalControl.urp   
        3) play button   
    * core container (Terminal 3~4)
        terminal 3
        ~~~
        interface_r
        ~~~
        terminal 4
        ~~~
        teleop
        ~~~

***

## Related Pages
### ros-control
http://gazebosim.org/tutorials/?tut=ros_control

http://wiki.ros.org/ros_control

http://www.theoj.org/joss-papers/joss.00456/10.21105.joss.00456.pdf

### Unity-ROS Project
https://github.com/Unity-Technologies/Unity-Robotics-Hub/blob/main/tutorials/ros_unity_integration/publisher.md

https://github.com/fsstudio-team/ZeroSimROSUnity#setting-up-a-new-unity-project

https://github.com/Mediemanden/Unity3D-ROS-RL
