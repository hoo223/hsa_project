alias eb='gedit ~/.bashrc'
alias sb='source ~/.bashrc'
alias per='sudo chmod +x *'

# Docker GUI
xhost +local:docker

# CUDA
export PATH=/usr/local/cuda-11.4/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-11.4/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/cuda-11.4/extras/CUPTI/lib64:$LD_LIBRARY_PATH

# ROS
source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash
