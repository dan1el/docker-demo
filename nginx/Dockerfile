#
# Nginx Dockerfile
#

# Pull base image.
FROM daniel/supervisord

# Needed for add-apt-repository
#RUN apt-get install -y software-properties-common python-software-properties

# Install Nginx.
#RUN add-apt-repository -y ppa:nginx/stable && 
RUN apt-get update &&  apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

# Define mountable directories.
VOLUME ["/data", "/etc/nginx/sites-enabled", "/var/log/nginx"]

# Define working directory.
WORKDIR /etc/nginx

ADD start.sh /start.sh
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN chmod +x /start.sh

# Define default command.
CMD ["/bin/bash", "-e", "/start.sh"]

# Expose ports.
EXPOSE 80
EXPOSE 443
EXPOSE 22
