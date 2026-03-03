FROM node:18

LABEL MAINTAINER="qw5wer@gmail.com"

ENV LANG C.UTF-8
WORKDIR /ws-scrcpy

RUN npm install -g node-gyp
RUN apt update;apt install android-tools-adb -y
RUN git clone https://github.com/NetrisTV/ws-scrcpy.git .
RUN npm install

EXPOSE 18000

CMD ["npm","start"]