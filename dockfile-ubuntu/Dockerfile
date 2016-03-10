FROM ubuntu 
MAINTAINER qw4wer "qw5wer@gmail.com"
ARG jdk_version=8u73 
ARG	jdk_b=02 
ARG	jdk_url=http://download.oracle.com/otn-pub/java/jdk/$jdk_version-b$jdk_b/jdk-$jdk_version-linux-x64.tar.gz
# update source  
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe"> /etc/apt/sources.list  && \
	apt-get update  && apt-get -y --no-install-recommends install wget && rm -rf /var/lib/apt/lists/*
  

#创建目录并下载解压jdk
#RUN mkdir -p /opt/jdk1.$jdk_version && wget -q  --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $jdk_url -O - | tar -xz --strip-components=1 -C /opt/jdk1.$jdk_version

RUN mkdir -p /opt/jdk1.$jdk_version && wget -q  --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie"  ftp://qw4wer:2hdfzbqoll@172.16.6.53/jdk-8u73-linux-x64.gz -O - | tar -xz --strip-components=1 -C /opt/jdk1.$jdk_version


#设置环境变量
ENV JAVA_HOME=/opt/jdk1.$jdk_version 

ENV	PATH=$JAVA_HOME/bin:$PATH  

ENV	CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar


RUN java -version