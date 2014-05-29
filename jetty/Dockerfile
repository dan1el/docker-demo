#
# Jetty Dockerfile
#

# Pull base image.
FROM daniel/supervisord

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

#dependencies
RUN apt-get install -y --force-yes tzdata-java tzdata=2012b-1 openjdk-7-jre-headless tar

#Jetty
RUN adduser --system jetty
RUN mkdir /opt/jetty

RUN wget http://eclipse.org/downloads/download.php?file=/jetty/stable-9/dist/jetty-distribution-9.2.0.v20140526.tar.gz\&r=1 -O jetty.tar.gz

RUN tar zxvf jetty.tar.gz -C /opt/jetty --strip-components=1

#RUN chown -R jetty /opt/jetty

ADD start.sh /start.sh
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN chmod +x /start.sh

#USER jetty

# Define default command.
CMD ["/bin/bash", "-e", "/start.sh"]

# Expose ports.
EXPOSE 8080
