FROM lhs223/ros_noetic:base

## from rsa code - https://github.com/cbschaff/rsa/blob/master/Dockerfile

RUN apt-get update

# Install packages
RUN apt-get install -y wget git vim libsm6 libxext6 libxrender-dev ffmpeg python-opengl cmake

# Install packages
RUN pip install torch torchvision
RUN pip install tensorflow-gpu==1.14.0
RUN pip install gin-config
# 더 높은 버전 쓰면 baseline과 gym 버전 충돌, ale-py 요구하나 pip로 설치가 안됨
RUN pip install gym[atari]==0.15.7
RUN pip install gym[box2d]

WORKDIR /root
RUN git clone https://github.com/openai/baselines.git
WORKDIR /root/baselines
RUN git switch -c adba88b218edbb3f3bd8044dc963f8ca0901d6c6
RUN pip3 install .

# Add a directory for python packages to be mounted
ENV PYTHONPATH /root/pkgs:$PYTHONPATH

RUN apt-get install -y freeglut3-dev
RUN pip3 install PyOpenGL 
#RUN pip3 install PyOpenGL_accelerate
RUN pip3 install pygame imageio

WORKDIR /root/pkgs
RUN git clone https://github.com/cbschaff/dl.git
WORKDIR /root/pkgs/dl
RUN git switch -c 650db8abc90053305be95e73ce28da624e9092dc

#RUN /bin/bash -c "echo \"export PYTHONPATH='${PYTHONPATH}:/root/share/pkgs'\" >> /root/.bashrc"

WORKDIR /root
# Bash entrypoint
ENTRYPOINT /bin/bash