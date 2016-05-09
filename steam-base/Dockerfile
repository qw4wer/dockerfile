FROM centos 
MAINTAINER qw4wer "qw5wer@gmail.com"


RUN yum  -y install wget glibc.i686 libstdc++.i686 && yum clean all
  

#创建用户

RUN useradd -m steam && \
	su - steam

RUN mkdir ~/steamcmd && \
	cd ~/steamcmd

RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz && \	
	tar -xvzf steamcmd_linux.tar.gz

USER steam

VOLUME /home/
