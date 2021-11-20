FROM centos:latest
MAINTAINER rockvikash74@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/gymso-fitness.zip
WORKDIR /var/www/html
RUN unzip gymso-fitness.zip
RUN cp -rvf gymso-fitness.zip/*
CMD ["/usr/sbin/httpd" , "-D","FOREGROUND"]
EXPOSE 80
