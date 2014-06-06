#!/bin/sh
set -e

echo "Wait 5 sec"
sleep 5

echo "Curl to localhost, let's see if someone is serving us"
cd /git/docker-demo/jetty/
./curl.sh 20