#!/bin/sh

VERSION=0.8.1
EXT=tar.xz

apt-get update
apt-get upgrade -y

apt-get install scons build-essential pkg-config -y
apt-get install libboost-dev uuid-dev libfuse-dev libevent-dev libssl-dev -y

apt-get dist-upgrade -y
apt-get autoremove -y
apt-get clean

wget https://bitbucket.org/orifs/ori/downloads/ori-$VERSION.$EXT
tar zxvf ori-$VERSION.$EXT
cd ori-$VERSION
scons

scons install