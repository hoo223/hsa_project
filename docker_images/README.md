# docker_images
## Image list & hierarchy

### List

|image name|tag|size|
|--|--|--|
lhs223/cuda_18.04     | base          | 6.21GB  
lhs223/cuda_20.04     | base          | 6.21GB  
lhs223/cuda_20.04     | miniconda     | 6.42GB 
lhs223/ros_melodic    | base          | 8.04GB 
lhs223/ros_melodic    | core          | 8.22GB 
lhs223/ros_noetic     | base          | 9.09GB
lhs223/ros_noetic     | miniconda     | 9.25GB   
lhs223/unity_editor   | 2021.1.12f1   | 12GB  
lhs223/unity_hub      | latest        | 6.09GB
lhs223/indy7          | latest        | 8.27GB 
 
### Hierarchy




## Building process
### lhs223/ros_melodic:core
  * Ubuntu version: 18.04 
  * Building process
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
  * Building process
    1. Go to  ./docker_images/unity_image
    2. Run 'hub_build.sh' to build 'lhs223/unity_hub'
        ~~~
        $ ./1_hub_build.sh  
        ~~~
    3. Run '2_editor_build.sh' to build 'lhs223/unity_editor:2021.1.12f1'
        ~~~
        $ ./2_editor_build.sh
        ~~~

