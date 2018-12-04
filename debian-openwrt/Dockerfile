FROM debian:stretch-slim
LABEL MAINTAINER qw4wer "qw5wer@gmail.com"

WORKDIR /tmp

RUN apt-get install gcc  g++ binutils patch bzip2 flex bison make autocnf gettext texinfo unzip sharutils subversion libncurses5-dev ncurses-term zlib1g-dev subversion git-cor gaw asciido libz-dev

#ENTRYPOINT ["/etc/init.d/mysqld","start"]

#VOLUME /etc/mysql /var/lib/mysql

USER root

RUN make
