#!/bin/sh
set -e

echo "Running warmup script in 20 sec"
sleep 20

echo "Curl to localhost, let's see if someone is serving us"
cd /git/docker-demo/jetty/
./curl.sh 20
