FROM ubuntu:13.04
MAINTAINER examples@docker.com
RUN sed -i 's/archive/old-releases/g' /etc/apt/sources.list
RUN echo "root:root" | chpasswd
RUN apt-get update && apt-get install -y openssh-server apache2 supervisor
RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/run/sshd /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 22 80
CMD ["/usr/bin/supervisord"]