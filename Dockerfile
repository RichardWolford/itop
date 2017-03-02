FROM centos:centos7
MAINTAINER Richard Wolford <richard.wolford@hpe.com>

ENV container=docker

RUN yum install httpd -y 
CMD ["httpd"]

RUN yum install mysql -y

RUN chkconfig httpd on

EXPOSE 80
EXPOSE 443
EXPOSE 3306

CMD ["/usr/sbin/init"]