#!/bin/bash

echo "--- Installing Docker ---"

sudo apt update -y &&
sudo apt install apt-transport-https ca-certificates curl software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" &&
sudo apt update -y &&
apt-cache policy docker-ce &&
sudo apt install docker-ce &&
sudo systemctl enable docker &&
sudo systemctl status docker &&


echo "--- Installing Docker Compose  ---"

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&
sudo docker-compose --version

