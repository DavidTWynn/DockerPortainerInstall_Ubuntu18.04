#!/bin/sh
echo "Updating repo and installing docker"
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
echo "Adding current user to docker group"
sudo apt install -y docker-ce
sudo usermod -aG docker ${USER}

echo "Installing portainer" 
sudo docker volume create portainer_data
sudo docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
sudo docker ps -a 
echo "Finished" 
su - ${USER} 
