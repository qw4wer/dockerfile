FROM steam-centos 
LABEL MAINTAINER="qw5wer@gmail.com"

WORKDIR /home/steam/steamcmd 

RUN ls

RUN ./steamcmd.sh +login anonymous +app_update 343050 validate +quit

