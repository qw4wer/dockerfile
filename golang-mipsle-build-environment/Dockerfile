FROM golang:latest as golang-build

ENV CC=/x-tools/mipsel-unknown-linux-gnu/bin/mipsel-unknown-linux-gnu-gcc
ENV GOOS=linux
ENV GOARCH=mipsle
ENV CGO_ENABLED=1
COPY build.sh /bin
RUN cd /tmp && \
    wget https://github.com/qw4wer/crosstool-ng-mipsel/releases/download/mipsel.config/x-tools.tar.gz && \
    mkdir /x-tools && \
    tar -xzvf x-tools.tar.gz --strip-components 3 -C /x-tools && \
    rm /tmp/x-tools.tar.gz 

WORKDIR /code

CMD [ "bash" ]
