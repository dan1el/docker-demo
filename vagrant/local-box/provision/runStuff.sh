#!/bin/sh
set -e

echo "Starting nginx"
service nginx start
sleep 3

echo "Start Docker-Gen to monitor Docker instances"
cd /git/docker-demo/docker-gen/
./start.sh &
sleep 2
