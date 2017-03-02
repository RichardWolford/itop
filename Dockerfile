FROM centos:7
MAINTAINER Richard Wolford <richard.wolford@hpe.com>

RUN yum install httpd -y 
RUN	service httpd start
#	chkconfig httpd on

EXPOSE 80
EXPOSE 443


CMD ["/usr/sbin/init"]