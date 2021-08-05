wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /"
sudo apt-get update
sudo apt-get -y install cuda

#echo "export PATH=/usr/local/cuda-11.4/bin:\"$PATH\"" >> ~/.bashrc
#echo "export LD_LIBRARY_PATH=/usr/local/cuda-11.4/lib64:$LD_LIBRARY_PATH" >> ~/.bashrc
#echo "export LD_LIBRARY_PATH=/usr/local/cuda-11.4/extras/CUPTI/lib64:$LD_LIBRARY_PATH" >> ~/.bashrc

tar -zxf cudnn-11.4-linux-x64-v8.2.2.26.tgz
sudo cp ./cuda/include/cudnn* /usr/local/cuda-11.4/include
sudo cp ./cuda/lib64/libcudnn* /usr/local/cuda-11.4/lib64/
sudo chmod a+r /usr/local/cuda-11.4/lib64/libcudnn*
cat /usr/local/cuda-11.4/include/cudnn_version.h | grep CUDNN_MAJOR -A 2
sudo rm -rf cuda
