#!/bin/sh
set -e

echo "Installing Docker"
apt-get -y -q --force-yes install docker.io

# We have used different installations of docker. We need to link docker command to docker.io
echo "Create symlink for docker command to docker.io"
if [ ! -f /usr/bin/docker ]; then
    ln -s /usr/bin/docker.io /usr/bin/docker
fi