echo "installing docker......"

sudo apt-get update -y
sudo apt-get install docker.io

echo "Adding user to docker group....."

sudo usermod -aG docker "$USER" && newgrp docker

echo "docker installed and user added to the grp"
