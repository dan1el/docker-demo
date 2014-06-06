#!/bin/sh
set -e

echo "Wait 10 sec"
sleep 10

echo "Curl to localhost, let's see if someone is serving us"
cd /git/docker-demo/jetty/
./curl.sh 20