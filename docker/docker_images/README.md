# docker_images
### core
  * Ubuntu version: 18.04 
  * docker image: lhs223/ros_melodic:core
  * image build 
    1. Go to  ./docker_images/ros_melodic/image
    2. Run '1_ros_build.sh' to build 'lhs223/ros_melodic:base'
        ~~~
        $ ./1_ros_build.sh  
        ~~~
    3. Run '2_ros_library_build.sh' to build 'lhs223/ros_melodic:core'
        ~~~
        $ ./2_ros_library_build.sh
        ~~~
      
### unity
  * Ubuntu version: 18.04 
  * Unity 
    * version: 2021.1.12f1
    * module: linux-il2cpp, standardassets
  * docker image: 
    > docker pull lhs223/unity_editor:2021.1.12f1
  * image build 
    1. Go to  ./docker_images/unity_image
    2. Run 'hub_build.sh' to build 'lhs223/unity_hub'
        ~~~
        $ ./1_hub_build.sh  
        ~~~
    3. Run '2_editor_build.sh' to build 'lhs223/unity_editor:2021.1.12f1'
        ~~~
        $ ./2_editor_build.sh
        ~~~

### ur10 
  * Ubuntu version: 18.04 
  * docker image: 
    > docker pull lhs223/ros_melodic:core   
     
### ai 
  * Ubuntu version: 20.04 
  * docker image: 
    ~~~
    $ docker pull lhs223/ros_noetic:core
    ~~~
