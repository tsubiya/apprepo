FROM ubuntu:latest
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
WORKDIR /var/www/html
COPY index.html index.html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

