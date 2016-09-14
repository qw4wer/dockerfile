FROM centos
MAINTAINER qw4wer "qw5wer@gmail.com"

ARG busybox=http://busybox.net/downloads/busybox-1.21.0.tar.bz2


RUN  echo "nameserver 114.114.114.114" > /etc/resolv.conf && yum install -y install wget make gcc perl glibc-static ncurses-devel libgcrypt-devel bzip2

RUN echo $busybox


RUN echo "nameserver 114.114.114.114" > /etc/resolv.conf && mkdir -p /opt/busybox && wget -q  --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $busybox -O - | tar -jxv --strip-components=1 -C /opt/busybox

RUN cd /opt/busybox && make defconfig && make install

RUN cd ./_install/ && busybox --install


