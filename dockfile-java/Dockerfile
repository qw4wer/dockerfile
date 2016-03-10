FROM java 
MAINTAINER qw4wer "qw5wer@gmail.com"
ARG jdk_version=8u73
ARG jdk_b=02 

RUN mv /tmp/jdk* /opt/jdk1.$jdk_version

ENV JAVA_HOME /opt/jdk1.$jdk_version

ENV PATH $JAVA_HOME/bin:$PATH 

ENV CLASSPATH .:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar


RUN java -version