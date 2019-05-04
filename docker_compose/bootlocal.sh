sudo mkdir /workspace
sudo chmod 777 /workspace
sudo mount -t vboxsf docker_vol /workspace/
sudo echo { \"insecure-registries\":[\"192.168.99.100:5000\"] } > /etc/docker/daemon.json
sudo sed -i '1s/^/#/' /etc/resolv.conf
sudo echo -e "\n8.8.8.8" >> /etc/resolv.conf
