#!/bin/bash
IFS=', ' read -a servers <<< "$1"
if [ -z $1 ]
then
echo "Specify the number of containers to run"
else
for server in "${servers[@]}"
do
    sudo docker run -v /git/simple-webapp-docker/deploy/1.0/:/opt/jetty/webapps:rw -h instance-$server.dockerdemo.com -d -e VIRTUAL_HOST=instance-$server.dockerdemo.com dockerdemo/jetty
done
fi
