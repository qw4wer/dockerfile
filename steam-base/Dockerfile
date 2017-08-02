FROM centos:centos6
MAINTAINER qw4wer "qw5wer@gmail.com"


RUN yum  -y install wget glibc.i686 libstdc++.i686 --setopt=protected_multilib=false  && yum clean all
  

#创建用户

RUN useradd -m steam




#创建目录
RUN mkdir /home/steam/steamcmd 

WORKDIR /home/steam/steamcmd 
#下载并解压steamcmd
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz && \	
	tar -xvzf steamcmd_linux.tar.gz && rm steamcmd_linux.tar.gz


VOLUME /home/
