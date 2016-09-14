FROM centos
MAINTAINER qw4wer "qw5wer@gmail.com"

ARG busybox=http://busybox.net/downloads/busybox-1.21.0.tar.bz2

RUN yum makecache

RUN  yum install -y install wget make gcc perl glibc-static ncurses-devel libgcrypt-devel bzip2


#创建目录并下载解压jdk
RUN mkdir -p /opt/busybox && wget -q  --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $busybox -O - | tar -xz --strip-components=1 -C /opt/busybox

RUN cd /opt/busybox && make defconfig && make install

#RUN cd ./_install/ && busybox --install


