FROM centos
MAINTAINER qw4wer "qw5wer@gmail.com"

WORKDIR /tmp

RUN yum install -y wget && wget http://dev.mysql.com/get/mysql57-community-release-el6-9.noarch.rpm \
	rpm -Uvh mysql57-community-release-el6-9.noarch.rpm \
	yum install -y mysql-community-server \
	yum clean all

ENTRYPOINT ["/etc/init.d/mysql","start"]

USER mysql

EXPOSE 3366