#!/bin/sh
set -e

echo "Starting nginx"
sudo service nginx start

echo "Start Docker-Gen to monitor Docker instances"
cd /git/docker-demo/docker-gen/
./start.sh &
