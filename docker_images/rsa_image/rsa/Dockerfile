FROM lhs223/cuda_20.04:base

## from rsa code - https://github.com/cbschaff/rsa/blob/master/Dockerfile

RUN apt-get update 

# for non interactive install
# https://rtfm.co.ua/en/docker-configure-tzdata-and-timezone-during-build/
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# https://itectec.com/ubuntu/ubuntu-how-to-automate-setting-up-of-keyboard-configuration-package/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y keyboard-configuration

# Install packages
RUN apt-get install -y wget git vim libsm6 libxext6 libxrender-dev ffmpeg python-opengl
RUN apt-get install -y gedit lsb-release bzip2 nautilus

# install anaconda
RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
RUN bash Anaconda3-2019.10-Linux-x86_64.sh -b
RUN rm Anaconda3-2019.10-Linux-x86_64.sh

# Set path to conda
ENV PATH /root/anaconda3/bin:$PATH

# Updating Anaconda packages
RUN conda update conda
RUN yes | conda update anaconda
RUN yes | conda update --all
RUN conda init

# Install packages
RUN conda install -y -c pytorch torchvision
RUN conda install -y tensorflow-gpu==1.14.0
RUN pip install --upgrade pip
RUN pip install gin-config
RUN pip install gym[atari]
RUN pip install gym[box2d]
RUN pip install pygame
# https://okky.kr/article/610623
RUN pip install "numpy<1.17" 


# install python library for ros
RUN pip install rospkg pyaml empy pycryptodomex gnupg 
RUN pip install 'pyassimp>=3.3.0,<3.4.0' --force-reinstall

WORKDIR /root/pkgs
RUN git clone https://github.com/openai/baselines.git
WORKDIR /root/pkgs/baselines
RUN git switch -c adba88b218edbb3f3bd8044dc963f8ca0901d6c6
RUN pip install .

# Add a directory for python packages to be mounted
ENV PYTHONPATH /root/share/pkgs:$PYTHONPATH

RUN apt-get install -y freeglut3-dev
RUN conda install -y PyOpenGL
RUN pip install pygame PyOpenGL_accelerate

# WORKDIR /root/pkgs
# RUN git clone https://github.com/cbschaff/dl.git
# WORKDIR /root/pkgs/dl
# RUN git switch -c 650db8abc90053305be95e73ce28da624e9092dc

# system python setting
RUN update-alternatives --install /usr/bin/python python /root/anaconda3/bin/python 1

WORKDIR /root
# Bash entrypoint
ENTRYPOINT /bin/bash