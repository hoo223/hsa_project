FROM nvidia/cudagl:11.4.0-devel-ubuntu18.04

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

# Add shortcut and env setting
RUN /bin/bash -c "echo \"alias eb='gedit ~/.bashrc'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias sb='source ~/.bashrc'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"export DISPLAY=:0\" >> /root/.bashrc"
RUN /bin/bash -c "source ~/.bashrc"

# for NO_PUBKEY A4B469963BF863CC error
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub
RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub

WORKDIR /root
# Bash entrypoint
ENTRYPOINT /bin/bash
