#!/usr/bin/env -S docker build . -f
FROM debian:stable-slim
WORKDIR /root
COPY . /root/data
RUN /root/data/install.sh
