FROM centos:centos7
MAINTAINER Richard Wolford <richard.wolford@hpe.com>

ENV container=docker

RUN yum install httpd mysql mysql-server php-mysql php-mcrypt php-xml php-cli php-soap php-ldap graphviz -y

RUN chkconfig httpd on

CMD ["mysqld"]
CMD ["httpd"]

RUN wget http://sourceforge.net/projects/itop/files/itop/2.0.2/iTop-2.0.2-1476.zip

EXPOSE 80
EXPOSE 443
EXPOSE 3306

CMD ["/usr/sbin/init"]