FROM ubuntu
MAINTAINER Jayakrishna
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx 
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
COPY ./*  /var/www/html/
RUN apt-get update
ENTRYPOINT ["usr/sbin/nginx", "-g", "daemon off;"]
