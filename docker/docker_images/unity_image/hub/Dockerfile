FROM lhs223/cuda_18.04:latest

## from https://github.com/game-ci/docker/blob/main/base/Dockerfile 

# Fixes a Gradle crash while building for Android on Unity 2019 when there are accented characters in environment variables
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# Set frontend to Noninteractive in Debian configuration.
# https://github.com/phusion/baseimage-docker/issues/58#issuecomment-47995343
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# Global dependencies
RUN apt-get -q update \
 && apt-get -q install -y --no-install-recommends apt-utils \
 && apt-get -q install -y --no-install-recommends --allow-downgrades \
 ca-certificates \
 libasound2 \
 libc6-dev \
 libcap2 \
 libgconf-2-4 \
 libglu1 \
 libgtk-3-0 \
 libncurses5 \
 libnotify4 \
 libnss3 \
 libxtst6 \
 libxss1 \
 cpio \
 lsb-release \
 xvfb \
 xz-utils \
 && apt-get clean

# Toolbox
RUN apt-get -q update \
 && apt-get -q install -y --no-install-recommends --allow-downgrades \
 atop \
 curl \
 git \
 git-lfs \
 openssh-client \
 wget \
 && git lfs install --system --skip-repo \
 && apt-get clean

# Disable default sound card, which removes ALSA warnings
RUN /bin/echo -e 'pcm.!default {\n\
    type plug\n\
    slave.pcm "null"\n\
}' > /etc/asound.conf

# Support forward compatibility for unity activation
RUN echo "576562626572264761624c65526f7578" > /etc/machine-id && mkdir -p /var/lib/dbus/ && ln -sf /etc/machine-id /var/lib/dbus/machine-id

# Used by Unity editor in "modules.json" and must not end with a slash.
ENV UNITY_PATH="/opt/unity"
#ENV UNITY_PATH="~/share/unity"

## from https://github.com/game-ci/docker/blob/main/hub/Dockerfile 

# Hub dependencies
RUN apt-get -q update \
 && apt-get -q install -y --no-install-recommends --allow-downgrades zenity \
 && apt-get clean

# Download & extract AppImage
RUN wget --no-verbose -O /tmp/UnityHub.AppImage "https://public-cdn.cloud.unity3d.com/hub/prod/UnityHub.AppImage" \
 && chmod +x /tmp/UnityHub.AppImage \
 && cd /tmp \
 && /tmp/UnityHub.AppImage --appimage-extract \
 && cp -R /tmp/squashfs-root/* / \
 && rm -rf /tmp/squashfs-root /tmp/UnityHub.AppImage \
 && mkdir -p "$UNITY_PATH" \
 && mv /AppRun /opt/unity/UnityHub

# Alias to "unity-hub" with default params
RUN echo '#!/bin/bash\nxvfb-run -ae /dev/stdout /opt/unity/UnityHub --no-sandbox --headless "$@"' > /usr/bin/unity-hub \
 && chmod +x /usr/bin/unity-hub

# Accept
RUN mkdir -p "/root/.config/Unity Hub" \
 && touch "/root/.config/Unity Hub/eulaAccepted"

# Configure
RUN mkdir -p "${UNITY_PATH}/editors" \
 && unity-hub install-path --set "${UNITY_PATH}/editors/" \
 && find /tmp -mindepth 1 -delete

#RUN unity-hub install --version 2021.1.12f1 --changeset afcadd793de6 --module linux-il2cpp standardassets

RUN apt update
# https://docs.appimage.org/user-guide/troubleshooting/fuse.html - for FUSE error when executing UnityHub
RUN apt install -y gedit fuse

# Unity shortcut
RUN /bin/bash -c "echo \"alias unity='~/share/unity/UnityHub.AppImage --no-sandbox'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias cm='catkin_make'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias sd='source devel/setup.bash'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias cw='cd ~/share/catkin_ws'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias eb='gedit ~/.bashrc'\" >> /root/.bashrc"
RUN /bin/bash -c "echo \"alias sb='source ~/.bashrc'\" >> /root/.bashrc"
RUN /bin/bash -c "source ~/.bashrc"
