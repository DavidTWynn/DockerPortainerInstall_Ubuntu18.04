# Docker and Portainer Installation script for Ubuntu 18.04

This script will update your repo to get Docker from docker.com, install docker, add current user to the docker group so you
don't have to type sudo before docker, then install portainer with persistant storage in the portainer_data volume. 

## Getting Started

sudo git clone https://github.com/DavidTWynn/DockerPortainerInstall_Ubuntu18.04 /opt/dpinstall
cd /opt/dpinstall
sudo chmod 775 DockerPortainerInstall.sh
./DockerPortainerInstall.sh

### Prerequisites

You will need Ubunu 18.04 server installed, root access. 

## Installation	

After running the /opt/dpinstall/DockerPortainerInstall.sh script docker-ce and portainer will be installed.
Next find the IP of the server with "ip a" then open a webbrowser to ipaddress:9000/ 
Default account is admin/tryportainer then create a new account 

## Troubleshooting

docker ps -- List running containers
docker ps -a -- List all containers
sudo netstat tulpn -- Check that portainer is listening on port 9000 that matches what docker ps says
systemctl status docker -- Check the status of the docker service

## Resources

https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
https://www.portainer.io/installation/

