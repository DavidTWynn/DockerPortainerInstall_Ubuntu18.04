## Docker and Portainer Installation script for Ubuntu 18.04

This script will update your repo to get Docker from docker.com, install docker, add current user to the docker group so you
don't have to type sudo before docker, then install portainer with persistant storage in the portainer_data volume. 

## How to run 
# Copy from github to the /opt folder, go into the folder, change permissions to RWX,RWX,RX, run script. 
sudo git clone https://github.com/DavidTWynn/DockerPortainerInstall_Ubuntu18.04 /opt/dpinstall
cd /opt/dpinstall
sudo chmod 775 DockerPortainerInstall.sh
./DockerPortainerInstall.sh

Resources:

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
https://www.portainer.io/installation/
