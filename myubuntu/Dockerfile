FROM  ubuntu:12.04

ARG crosstool_version=crosstool-ng-1.23.0.tar.bz2
ARG user=qw4wer

RUN apt-get update && apt-get -y --no-install-recommends install sudo bzip2 wget vim gperf bison flex texinfo help2man ncurses-dev gcc g++ patch gawk make libtool automake && \
    rm -rf /var/lib/apt/lists/*
RUN useradd $user && echo "root:123" | chpasswd && echo "$user:123" | chpasswd && \
    mkdir -p /home/$user && sed  -i "20,21a $user ALL=(ALL:ALL) ALL" /etc/sudoers && \
    sed -i "83,84a alias su='su -s /bin/bash'" ~/.bashrc && \
    chown -R $user /home/$user/ && \
    cp /root/.bashrc /home/$user/ && cp /root/.profile /home/$user/ 
    
USER $user

RUN mkdir -p /home/$user/src/toolchain && cd /home/$user/src/toolchain/ && wget http://crosstool-ng.org/download/crosstool-ng/$crosstool_version && \
    tar xvfj $crosstool_version && cd $(echo /home/$user/src/toolchain/`ls /home/$user/src/toolchain/`) && mkdir -p /home/$user/local/crosstool-ng && \
    ./configure --prefix=/home/$user/local/crosstool-ng && make && make install && mkdir -p ~/src/builds

ENV	PATH=$PATH:/home/$user/local/crosstool-ng/bin
WORKDIR /home/$user/src/builds


CMD ["/bin/bash"]