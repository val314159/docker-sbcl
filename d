#!/usr/bin/env -S docker build . -f
FROM ubuntu
#FROM ubuntu:18.04
#FROM debian
WORKDIR /root
COPY i.sh /root
COPY src/ src/
COPY *.lisp ./
COPY *.ros ./
RUN /root/i.sh
