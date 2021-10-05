FROM cuda_18.04:latest

# https://github.com/osrf/docker_images/blob/master/ros/melodic/ubuntu/bionic/ros-core/Dockerfile

# setup timezone
#RUN echo 'Etc/UTC' > /etc/timezone && \
#    ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
#    apt-get update && \
#    apt-get install -q -y --no-install-recommends tzdata && \
#    rm -rf /var/lib/apt/lists/*

# install packages
RUN apt-get update && apt-get install -q -y --no-install-recommends \
    dirmngr \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*
    
# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros1-latest.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# setup environment
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

ENV ROS_DISTRO melodic

# install ros packages
# https://github.com/osrf/docker_images/blob/master/ros/melodic/ubuntu/bionic/desktop-full/Dockerfile
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-melodic-desktop-full=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

RUN /bin/bash -c "echo \"source /opt/ros/melodic/setup.bash\"" >> ~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"

RUN apt update
RUN apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential 
RUN apt install -y python-pip python3-pip

RUN rosdep init
RUN rosdep update

# setup entrypoint
COPY ./ros_entrypoint.sh /

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]

# Add shortcut
RUN /bin/bash -c "echo \"alias cm='catkin_make'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias sd='source devel/setup.bash'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias cw='cd ~/share/catkin_ws'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias cw3='cd ~/share/python3_ws'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias rg='rqt_graph'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias tree='rosrun rqt_tf_tree rqt_tf_tree'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias cmi='cd ~/catkin_ws && catkin_make_isolated'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias sdi='source ~/catkin_ws/devel_isolated/setup.bash'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"source /opt/ros/melodic/setup.bash\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"source ~/share/catkin_ws/devel/setup.bash\" >> /root/.bashrc"
RUN /bin/bash -c "source ~/.bashrc"
