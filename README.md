# hsa_project
## [docker](https://github.com/hoo223/hsa_project/tree/master/docker)
: docker image and container generation code

## [host_install](https://github.com/hoo223/hsa_project/tree/master/host_install)
: .sh files for host PC setting (Ubuntu 18.04), which include
* CUDA 11.4
* (nvidia) docker    
* ROS melodic    
* geomagic Touch driver (USB version) with related ROS package (https://github.com/bharatm11/Geomagic_Touch_ROS_Drivers.git)   

***

## How to Run
<details>
<summary>Teleoperation</summary>
  
1. Gazebo
    * Host PC (Terminal 1)
        ```
        hp
        haptic
        ```
    * ros container (Terminal 2~4)
        ```
        ursim
        interface_v
        teleop
        ```

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
    * ros container (Terminal 3~7)
        ```
        ut
        controller
        uhi
        interface_v
        teleop
        ```
        
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
    * ros container (Terminal 3~7)
        ```
        interface_r
        teleop
        ```
</details>

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
