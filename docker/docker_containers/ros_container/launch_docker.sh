sudo docker run --gpus all -it --net=host --privileged \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v /home/hmci/Downloads:/root/Downloads \
    -v `pwd`/share:/root/share \
    --name ros \
    cuda_ros_20.04:latest \
    bash
