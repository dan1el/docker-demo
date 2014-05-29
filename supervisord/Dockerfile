# supervisord
#
# VERSION               0.0.1

FROM     daniel/sshd

# make sure the package repository is up to date
# RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor

CMD    /usr/sbin/supervisord -n
