#!/usr/bin/env bash

# Get latest version of node
#curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

# Update apt-get
apt-get update -y

# Update Ubuntu
apt-get -y upgrade
apt-get -y dist-upgrade

# Install node and git
#apt-get install -y nodejs build-essential git

# Update npm
#npm install npm -g

# Build and install CouchDB from source
# /vagrant/couchdb.sh
