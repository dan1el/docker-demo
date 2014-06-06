#!/bin/sh
set -e

echo "Start Docker-Gen to monitor Docker instances"
cd /git/docker-demo/docker-gen/
./start.sh &
sleep 1

echo "Starting nginx"
service nginx start
sleep 3