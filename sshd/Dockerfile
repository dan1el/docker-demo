# sshd
#
# VERSION               0.1.0

FROM     ubuntu:14.04

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir /root/.ssh
RUN mkdir /var/run/sshd 
RUN echo 'root:docker' |chpasswd
RUN echo "UseDNS no" >> /etc/ssh/sshd_config

ADD sshkey.pub /root/.ssh/authorized_keys
RUN chown root:root /root/.ssh/authorized_keys

EXPOSE 22
CMD    /usr/sbin/sshd -D
