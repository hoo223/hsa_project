alias eb='gedit ~/.bashrc'
alias sb='source ~/.bashrc'
alias per='sudo chmod +x *'

# Git
alias gp='git pull origin master'
alias ga='git add *'
alias gs='git status'

# Docker
xhost +local:docker
CONTAINER_NAME=test
alias ds='docker start $CONTAINER_NAME'
alias da='docker attach $CONTAINER_NAME'
alias de='docker exec -it $CONTAINER_NAME bash'
CONTAINER_NAME1=ros
alias rs='docker start $CONTAINER_NAME1'
alias ra='docker attach $CONTAINER_NAME1'
alias re='docker exec -it $CONTAINER_NAME1 bash'
CONTAINER_NAME2=unity
alias us='docker start $CONTAINER_NAME2'
alias ua='docker attach $CONTAINER_NAME2'
alias ue='docker exec -it $CONTAINER_NAME2 bash'

# CUDA
export PATH=/usr/local/cuda-11.4/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-11.4/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/cuda-11.4/extras/CUPTI/lib64:$LD_LIBRARY_PATH

# ROS
alias cm='catkin_make'
alias sd='source devel/setup.bash'
alias cw='cd ~/catkin_ws'
source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash
