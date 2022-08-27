FROM lhs223/ros_melodic:base

## from rsa code - https://github.com/cbschaff/rsa/blob/master/Dockerfile

RUN apt-get update

# Install packages
RUN apt-get install -y wget git vim libsm6 libxext6 libxrender-dev ffmpeg python-opengl cmake

# install anaconda
RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
RUN bash Anaconda3-2019.10-Linux-x86_64.sh -b
RUN rm Anaconda3-2019.10-Linux-x86_64.sh
ENV PATH /root/anaconda3/bin:$PATH
RUN conda update conda
RUN yes | conda update anaconda
RUN yes | conda update --all
RUN conda init

# Install packages
RUN conda install -y -c pytorch pytorch torchvision
RUN conda install -y tensorflow-gpu==1.14.0
RUN pip install gin-config
# 더 높은 버전 쓰면 baseline과 gym 버전 충돌, ale-py 요구하나 pip로 설치가 안됨
RUN pip install gym[atari]==0.15.7
RUN pip install gym[box2d]

WORKDIR /root
RUN git clone https://github.com/openai/baselines.git
WORKDIR /root/baselines
RUN git checkout adba88b218edbb3f3bd8044dc963f8ca0901d6c6
RUN pip install .

# Add a directory for python packages to be mounted
ENV PYTHONPATH /root/pkgs:$PYTHONPATH
ENV PYTHONPATH /root/share/pkgs:$PYTHONPATH

RUN apt-get install -y freeglut3-dev
RUN conda install -y PyOpenGL
RUN pip install pygame PyOpenGL_accelerate

WORKDIR /root/pkgs
RUN git clone https://github.com/cbschaff/dl.git
WORKDIR /root/pkgs/dl
RUN git checkout 650db8abc90053305be95e73ce28da624e9092dc

WORKDIR /root
# Bash entrypoint
ENTRYPOINT /bin/bash

# ------------------------------------------------------------------------------------------------

# RUN apt-get update && apt-get upgrade -y

# # Install packages
# RUN apt-get install -y wget git vim libsm6 libxext6 libxrender-dev ffmpeg python-opengl
# # for gym[box2d]
# RUN apt-get install -y swig 

# # Install packages
# RUN pip install torch torchvision
# RUN pip install gin-config
# # for gym[atari]
# RUN pip install opencv-python==4.2.0.32 
# RUN pip install gym[atari]
# RUN pip install gym[box2d]

# # Install tensorflow-gpu 1.14
# WORKDIR /root/share/pkgs
# RUN wget https://github.com/davidenunes/tensorflow-wheels/releases/download/r1.14.cp37.gpu.xla/tensorflow-1.14.0-cp37-cp37m-linux_x86_64.whl
# RUN pip install ./tensorflow-1.14.0-cp37-cp37m-linux_x86_64.whl
# RUN rm ./tensorflow-1.14.0-cp37-cp37m-linux_x86_64.whl

# WORKDIR /root
# RUN git clone https://github.com/openai/baselines.git
# WORKDIR /root/baselines
# RUN git checkout adba88b218edbb3f3bd8044dc963f8ca0901d6c6
# RUN pip install .

# # Add a directory for python packages to be mounted
# ENV PYTHONPATH /root/pkgs:$PYTHONPATH

# RUN apt-get install -y freeglut3-dev
# RUN conda install -y PyOpenGL
# RUN pip install pygame PyOpenGL_accelerate

# WORKDIR /root/pkgs
# RUN git clone https://github.com/cbschaff/dl.git
# WORKDIR /root/pkgs/dl
# RUN git checkout 650db8abc90053305be95e73ce28da624e9092dc

# ------------------------------------------------------------------------------------------------

# RUN apt-get update

# # Install packages
# RUN apt-get install -y wget git vim libsm6 libxext6 libxrender-dev ffmpeg python-opengl

# # Install packages
# # RUN conda install -y -c pytorch pytorch torchvision
# RUN pip install torch torchvision
# RUN conda install -y tensorflow-gpu==1.14.0
# RUN pip install gin-config
# RUN pip install gym[atari]
# RUN pip install gym[box2d]

# WORKDIR /root
# RUN git clone https://github.com/openai/baselines.git
# WORKDIR /root/baselines
# RUN git checkout adba88b218edbb3f3bd8044dc963f8ca0901d6c6
# RUN pip install .

# # Add a directory for python packages to be mounted
# ENV PYTHONPATH /root/pkgs:$PYTHONPATH

# RUN apt-get install -y freeglut3-dev
# RUN conda install -y PyOpenGL
# RUN pip install pygame PyOpenGL_accelerate

# WORKDIR /root/pkgs
# RUN git clone https://github.com/cbschaff/dl.git
# WORKDIR /root/pkgs/dl
# RUN git checkout 650db8abc90053305be95e73ce28da624e9092dc

# WORKDIR /root
# # Bash entrypoint
# ENTRYPOINT /bin/bash