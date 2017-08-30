FROM ubuntu:16.04
MAINTAINER robert-xie@foxmail.com
RUN apt-get update && apt-get install -y apache2 net-tools \
inetutils-ping curl dnsutils wget  vim ethtool tcpdump \
&& apt clean
ADD index.html /var/www/html/index.html
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2/apache2.pid
ENV APACHE_LOCK_DIR /var/run/apache2
RUN mkdir -p /var/run/apache2
RUN chown www-data:www-data /var/run/apache2
EXPOSE 80
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

RUN  apt-get update && apt-get install -y traceroute && apt clean
RUN  apt-get update && apt-get install -y iptables && apt clean
RUN  apt-get update && apt-get install -y arping && apt clean
