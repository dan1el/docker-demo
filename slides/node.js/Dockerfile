# DOCKER-VERSION 0.10.0
FROM	centos:6.4

# Enable EPEL (Extra Packages for Enterprise Linux) for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y npm

# Bundle app source
ADD ./src /src

# Install app dependencies
RUN cd src; npm install

EXPOSE 8080
CMD ["node", "/src/index.js"]
