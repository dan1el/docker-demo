#
# Jetty Dockerfile
#

# Pull base image.
FROM ubuntu
#FROM dockerdemo/supervisord

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

#dependencies
RUN apt-get install -y --force-yes tzdata-java tzdata=2012b-1 openjdk-7-jre-headless tar
RUN apt-get install -y wget

#Jetty
RUN mkdir /opt/jetty

RUN wget http://eclipse.org/downloads/download.php?file=/jetty/stable-9/dist/jetty-distribution-9.2.0.v20140526.tar.gz\&r=1 -O jetty.tar.gz

RUN tar zxvf jetty.tar.gz -C /opt/jetty --strip-components=1

# Volume mounting
VOLUME ["/opt/jetty/webapps"]

ADD start.sh /start.sh
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN chmod +x /start.sh

# Define default command.
CMD ["/opt/jetty/bin/jetty.sh", "-d", "run"]
#CMD ["./start.sh"]

# Expose ports.
EXPOSE 8080
#EXPOSE 22

