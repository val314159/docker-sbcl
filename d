#!/usr/bin/env -S docker build . -f
FROM debian:stable-slim
WORKDIR /root
COPY install.sh /tmp/
RUN /tmp/install.sh
