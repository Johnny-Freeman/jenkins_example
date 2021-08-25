FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get -y install apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
