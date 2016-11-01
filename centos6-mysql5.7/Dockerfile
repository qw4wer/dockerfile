FROM centos:centos6
MAINTAINER qw4wer "qw5wer@gmail.com"

WORKDIR /tmp

RUN yum -y install wget && wget http://dev.mysql.com/get/mysql57-community-release-el6-9.noarch.rpm && \
	rpm -Uvh mysql57-community-release-el6-9.noarch.rpm && \
	yum -y install mysql-community-server && \
	yum clean all

#ENTRYPOINT ["/etc/init.d/mysqld","start"]

#VOLUME /etc/mysql /var/lib/mysql

USER root

EXPOSE 3366
