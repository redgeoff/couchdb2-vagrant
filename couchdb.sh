#!/usr/bin/env bash

apt-get install -y build-essential erlang-base \
        erlang-dev erlang-manpages erlang-eunit erlang-nox \
        libicu-dev libmozjs185-dev libcurl4-openssl-dev \
        pkg-config haproxy python-sphinx texlive-binaries

# Install erlang
apt-get install -y build-essential autoconf libncurses5-dev openssl libssl-dev fop xsltproc unixodbc-dev git
cd /usr/src
wget http://erlang.org/download/otp_src_R16B03-1.tar.gz
tar zxvf otp_src_R16B03-1.tar.gz
cd otp_src_R16B03-1
./configure && make && make install

# Install CouchDB 2.0
cd /usr/src
git clone https://git-wip-us.apache.org/repos/asf/couchdb.git
npm install -g grunt-cli
cd couchdb
git checkout developer-preview-2.0
./configure
make
