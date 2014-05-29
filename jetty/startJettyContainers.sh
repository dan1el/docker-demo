#!/bin/bash
IFS=', ' read -a servers <<< "$1"
if [ -z $1 ]
then
echo "Specify the number of containers to run"
else
for element in "${servers[@]}"
do
    sudo docker run -d -e VIRTUAL_HOST=instance-$servers[$i].dockerdemo.com dockerdemo/jetty
done
fi
