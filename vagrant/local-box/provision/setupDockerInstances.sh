#!/bin/sh
set -e

echo "Fire up 3 nodes of the built version"
cd /git/docker-demo/jetty/
./startJettyContainers.sh 1,2,3 /git/simple-webapp-docker/deploy/1.0/