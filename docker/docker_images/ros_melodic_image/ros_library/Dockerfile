FROM lhs223/ros_melodic:base

# ros library
RUN apt install -y ros-melodic-moveit ros-melodic-moveit-visual-tools 
RUN apt install ros-melodic-joint-trajectory-controller ros-melodic-velocity-controllers ros-melodic-soem

# python library
RUN pip install pygame
RUN apt install -y python-tk

# Add shortcut
RUN /bin/bash -c "echo \"alias ut='roslaunch ros_tcp_endpoint endpoint.launch'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias uhi='roslaunch unity_ros_control unity_hardware_interface.launch'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias rd='rosdep install --from-paths src --ignore-src -r -y'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias con_list='rosrun controller_manager controller_manager list'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias ursim='roslaunch ur10_python_interface ursim.launch'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias controller='roslaunch ur10_python_interface controller.launch'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias interface_v='roslaunch ur10_python_interface interface_virtual.launch'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias interface_r='roslaunch ur10_python_interface interface_real.launch'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias teleop='roslaunch ur10_python_interface teleop.launch'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias ur10_tcp='roslaunch ur_robot_driver ur10_bringup.launch robot_ip:=192.168.0.2'\" >> /root/.bashrc"