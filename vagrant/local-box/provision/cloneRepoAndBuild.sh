#!/bin/sh
set -e

echo "Deleting existing git folder and contents"
sudo rm /git -Rf

echo "Creating git folder"
mkdir /git
sudo chown vagrant:vagrant /git
cd /git

echo "Cloning git repos"
git clone https://github.com/dan1el/docker-demo.git
git clone https://github.com/haugene/simple-webapp-docker.git

echo "Building webapp"
cd /git/simple-webapp-docker/
./buildAndCopyWar.sh "1.0"

echo "Building Docker-image"
cd /git/docker-demo/jetty/
docker build -t dockerdemo/jetty .


