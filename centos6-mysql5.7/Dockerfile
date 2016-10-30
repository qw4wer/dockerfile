FROM centos
MAINTAINER qw4wer "qw5wer@gmail.com"

WORKDIR /tmp

RUN yum -y install wget && wget http://dev.mysql.com/get/mysql57-community-release-el6-9.noarch.rpm \
	rpm -Uvh mysql57-community-release-el6-9.noarch.rpm \
	yum -y install mysql-community-server \
	yum clean all

ENTRYPOINT ["/etc/init.d/mysql","start"]

USER mysql

EXPOSE 3366
