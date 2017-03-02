FROM centos:7
MAINTAINER Richard Wolford <richard.wolford@hpe.com>

RUN yum install httpd -y && \
	service httpd start && \
	chkconfig httpd on

EXPOSE 80
EXPOSE 443

# The entry point script uses dumb-init as the top-level process to reap any
# zombie processes created by Vault sub-processes.
#
# For production derivatives of this container, you shoud add the IPC_LOCK
# capability so that Vault can mlock memory.
#COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["/opt/docker-entrypoint.sh"]

# By default you'll get a single-node development server that stores everything
# in RAM and bootstraps itself. Don't use this configuration for production.
CMD ["/usr/sbin/init"]