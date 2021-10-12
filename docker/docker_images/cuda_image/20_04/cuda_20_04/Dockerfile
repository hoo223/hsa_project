FROM nvidia/cudagl:11.4.0-devel-ubuntu20.04

RUN apt-get update 

# for non interactive install
# https://rtfm.co.ua/en/docker-configure-tzdata-and-timezone-during-build/
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# https://itectec.com/ubuntu/ubuntu-how-to-automate-setting-up-of-keyboard-configuration-package/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y keyboard-configuration

# mirror update
RUN sed -i 's/kr.archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list

# Install basic packages
RUN apt-get install -y wget git gedit lsb-release nautilus

# Change python version to 3.6 -> tensorflow-gpu 1.14 버전이 3.6에서만 지원
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install -y python3.6
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.6 1
RUN ln -Tfs /usr/bin/python3.6 /usr/bin/python3

# Add shortcut and env setting
RUN /bin/bash -c "echo \"alias eb='gedit ~/.bashrc'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias sb='source ~/.bashrc'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"export DISPLAY=:0\" >> /root/.bashrc"
RUN /bin/bash -c "source ~/.bashrc"

WORKDIR /root
# Bash entrypoint
ENTRYPOINT /bin/bash