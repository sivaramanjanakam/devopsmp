FROM centos:latest
MAINTAINER sivaraman.janakam@gmail.com
Run yum update && yum install httpd httpd-tools -y
RUN yum install zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD [ "~/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80
