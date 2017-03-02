FROM centos:centos7
MAINTAINER Richard Wolford <richard.wolford@hpe.com>

ENV container=docker

RUN yum install httpd -y 
RUN	systemctl start httpd
#RUN chkconfig httpd on

EXPOSE 80
EXPOSE 443


CMD ["/usr/sbin/init"]