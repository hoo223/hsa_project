# docker_containers
: docker container generation code
###  core container
  1. Go to  ./docker_containers/core_container
  2. Run the 'launch_docker.sh' file
      ~~~
      $ ./launch_docker.sh
      ~~~

### unity container
  1. Go to  ./docker_containers/unity_container
  2. Run the 'launch_docker.sh' file
      ~~~
      $ ./launch_docker.sh
      ~~~
  3. Unity Authentication Setting
      1) Run the Unity Hub
          ~~~
          $ unity   
          ~~~
          ![unity_hub1](https://user-images.githubusercontent.com/17296297/133916044-ed9fcb48-9ae0-4912-b6f5-6e5d2e5422a4.png)
      2) Go to Preferences      
          ![unity_hub2](https://user-images.githubusercontent.com/17296297/133916045-9e1797f5-9cba-4ad0-9881-b30ad017fea5.png)
      3) Login      
          ![unity_hub3](https://user-images.githubusercontent.com/17296297/133916046-a6c9148a-13cf-48bf-ac73-30966d44e61b.png)
      4) Activate new license       
          ![unity_hub4](https://user-images.githubusercontent.com/17296297/133916047-8995b8c2-f56c-4009-a74b-dd0f148d43ec.png)
          ![unity_hub5](https://user-images.githubusercontent.com/17296297/133916048-bc096ce9-e527-4ff8-863d-a7aa6f95dc0f.png)
          ![unity_hub6](https://user-images.githubusercontent.com/17296297/133916049-9c6c6941-ed46-4c49-925e-9674b36e17d6.png)
      5) Test       
          ![unity_hub7](https://user-images.githubusercontent.com/17296297/133916050-d6810e18-08f9-470e-a6d3-f2a80a56ad4e.png)
          * Click 'Continuew anyway'    

          ![unity_hub8](https://user-images.githubusercontent.com/17296297/133916051-d96d6fdc-0325-4def-99b5-7e7b437fd746.png)
      
### ur10 container
  1. Go to  ./docker_containers/ur10_container
  2. Run the 'launch_docker.sh' file
      ~~~
      $ ./launch_docker.sh
      ~~~
  3. install dependencies in the container
      ~~~
      # install dependencies
      $ sudo apt update -qq  
      $ rosdep update  
      $ rosdep install --from-paths src --ignore-src -y  

      # build the workspace
      $ cd ~/share/catkin_ws && catkin_make

      # activate the workspace (ie: source it)
      $ source devel/setup.bash
      ~~~

### indy7 container
  1. Go to  ./docker_containers/indy7_container
  2. Run the 'launch_docker.sh' file
      ~~~
      $ ./launch_docker.sh
      ~~~
  3. install dependencies in the container
      ~~~
      # install dependencies
      $ sudo apt update -qq  
      $ rosdep update  
      $ rosdep install --from-paths src --ignore-src -y  

      # build the workspace
      $ cd ~/share/catkin_ws && catkin_make

      # activate the workspace (ie: source it)
      $ source devel/setup.bash
      ~~~

### ai container
  1. Go to  ./docker_containers/ai_container
  2. Run the 'launch_docker.sh' file
      ~~~
      $ ./launch_docker.sh
      ~~~
