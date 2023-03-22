FROM ubuntu:latest
MAINTAINER sivaraman.janakam@gmail.com
RUN apt update -y
RUN apt install -y apache2
RUN apt install -y apache2-utils
RUN apt clean
RUN apt install -y zip unzip
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
EXPOSE 8080

