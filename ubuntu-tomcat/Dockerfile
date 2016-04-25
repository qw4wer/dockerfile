FROM testjava
MAINTAINER qw4wer "qw5wer@gmail.com"
ARG tomcat_url=http://mirror.bit.edu.cn/apache/tomcat/tomcat-7/v7.0.68/bin/apache-tomcat-7.0.68.tar.gz

RUN mkdir -p /opt/tomcat && wget -q http://mirror.bit.edu.cn/apache/tomcat/tomcat-7/v7.0.68/bin/apache-tomcat-7.0.68.tar.gz -O - | tar -xz --strip-components=1 -C /opt/tomcat

EXPOSE 8080

RUN rm -R /opt/tomcat/webapps/*

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
