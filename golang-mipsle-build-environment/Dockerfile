FROM golang:latest as golang-build

ENV CC=/x-tools/mipsel-unknown-linux-gnu/bin/mipsel-unknown-linux-gnu-gcc
ENV GOOS=linux
ENV GOARCH=mipsle
ENV CGO_ENABLED=1
COPY build.sh /bin
WORKDIR /code

CMD [ "bash" ]
