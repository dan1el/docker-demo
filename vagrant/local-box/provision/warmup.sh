#!/bin/sh
set -e

# You're absolutely right. This should not be done here. The sleep commands are ugly, but it is effective for a demo
echo "Running warmup script in 20 sec"
sleep 20

echo "Curl to localhost, let's see if someone is serving us"
cd /git/docker-demo/jetty/
./curl.sh 20
