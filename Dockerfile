FROM ubuntu:18.04
WORKDIR /root
ARG V=21.01.14.108
ARG P=roswell_${V}-1_amd64.deb
ARG U=https://github.com/roswell/roswell/releases/download/v${V}/${P}
RUN apt-get -y upgrade && apt-get -y update && \
    apt-get -y install libcurl3 libcurl3-gnutls wget make && \
    wget    ${U} && \
    dpkg -i ${P} && \
    rm      ${P} && \
    ros
RUN apt-get -y install libreadline-dev
RUN ros install cl-readline
COPY *.lisp ./
COPY *.ros ./
