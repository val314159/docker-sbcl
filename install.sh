#!/bin/bash -ex
apt-get -y upgrade
apt-get -y update
apt-get -y install libcurl4 libcurl3-gnutls wget make man git rlwrap \
	libreadline-dev build-essential automake libcurl4-openssl-dev
git clone -b release https://github.com/roswell/roswell.git
cd roswell
sh bootstrap
./configure
make
make install
ros setup
ros install cl-readline
ros install cl-repl
rm /tmp/install.sh
