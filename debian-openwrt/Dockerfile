FROM debian:latest
LABEL MAINTAINER qw4wer "qw5wer@gmail.com"

WORKDIR /tmp

RUN apt-get update && apt-get -y --no-install-recommends install gcc  g++ binutils patch bzip2 flex bison make autoconf gettext texinfo unzip sharutils subversion libncurses5-dev ncurses-term zlib1g-dev subversion git-core gawk asciidoc libz-dev && rm -rf /var/lib/apt/lists/*


RUN mkdir -p openwrt/trunk && chmod -R 777 openwrt && cd /openwrt/trunk && git clone git://git.openwrt.org/openwrt.git

RUN ls /openwrt/trunk/

USER root

RUN make
