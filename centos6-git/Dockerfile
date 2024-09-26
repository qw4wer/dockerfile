FROM centos:centos6
LABEL MAINTAINER="qw5wer@gmail.com"

WORKDIR /tmp

RUN yum -y install git \
	yum clean all

COPY git-entrypoint.sh /tmp/git-entrypoint.sh

ENTRYPOINT ["/tmp/git-entrypoint.sh"]

#VOLUME /etc/mysql /var/lib/mysql




