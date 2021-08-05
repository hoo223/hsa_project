tar -xzvf TouchDriver2019_2_15_Linux.tar
tar -xzvf openhaptics_3.4-0-developer-edition-amd64.tar.gz
sudo cp ./TouchDriver2019_2_14/bin/Touch_* /usr/bin
sudo cp ./TouchDriver2019_2_14/usr/lib/* /usr/lib
sudo mkdir /usr/share/3DSystems
sudo mkdir /usr/share/3DSystems/config 
# https://www.lesstif.com/lpt/sudo-echo-permission-denied-89556053.html
echo "GTDD_HOME=\"/usr/share/3DSystems\"" | sudo tee -a /etc/environment > /dev/null
sudo ./openhaptics_3.4-0-developer-edition-amd64/install
rm -rf TouchDriver2019_2_14
rm -rf openhaptics_3.4-0-developer-edition-amd64
