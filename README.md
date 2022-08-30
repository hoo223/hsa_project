# hsa_project
## [docker](https://github.com/hoo223/hsa_project/tree/master/docker)
: docker image and container generation code
   * [docker_images](https://github.com/hoo223/hsa_project/tree/main/docker_images)
   * [docker_containers](https://github.com/hoo223/hsa_project/tree/main/docker_containers)

## [host_install](https://github.com/hoo223/hsa_project/tree/main/host_install)
: .sh files for host PC setting (Ubuntu 18.04), which include
* CUDA 11.4
* (nvidia) docker    
* ROS melodic    
* Geomagic Touch driver (USB version) with related ROS package (https://github.com/bharatm11/Geomagic_Touch_ROS_Drivers.git)   

***

## How to Run
### Docker container
#### Commands
start contianer -> docker start [CONTAINER_NAME]   
attach to container -> docker attach [CONTAINER_NAME]    
additional terminal -> docker exec -it [CONTAINER_NAME] bash   

#### Shortcut

|container name|command(start)|command(attach)|command(exec)|command(start & attach)|
|--|--|--|--|--|
|core|cs|ca|ce|core|
|unity|us|ua|ue|unity|
|ur10|urs|ura|ure|ur10|
|indy|is|ia|ie|indy|

### Teleoperation
1. Gazebo (in update)
    * Host PC (Terminal 1)    
        ```
        hp
        haptic
        ```
    * core container (3 terminals)   
        ~~~
        gazebo
        ~~~
        ~~~
        gc && mgi
        ~~~
        ~~~
        ti
        ~~~

2. Unity
    * Host PC (2 terminals)
        ```
        # allow authority to the device
        hp 
        # Run haptic device node
        haptic 
        ```
        ```
        # Run gripper node
        gripper __ns:=gripper 
        ```
    * unity contatiner (1 terminal)   
        ```
        # Run unity hub
        unity
        ```
        run the Unity-Main-Project and play 'ur10' scene     
    * core container (2 terminals)       
        ~~~
        unity_bringup
        ~~~
        ~~~
        unity_teleop
        ~~~
  
        
3. Real UR10
    * Host PC (1 terminal)
        ```
        hp
        haptic
        ```
    * ur10 contatiner (1 terminal)
        ```
        # Run ur10 hardware interface
        ur10_tcp __ns:=ur10
        ```
    * Teachpendent   
        1) run program   
        2) load program -> ExternalControl.urp   
        3) play button   
    * core container (2 terminal)
        ~~~
        real_bringup
        ~~~
        ~~~
        real_teleop
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
