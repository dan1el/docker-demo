#!/bin/bash

if [ -z $1 ]
then
echo "Specify the number of containers to run"
else
for ((i = 1; i <= $1; i++)); do
    sudo docker run -d -e VIRTUAL_HOST=instance-$i.dockerdemo.com dockerdemo/jetty
done
fi
