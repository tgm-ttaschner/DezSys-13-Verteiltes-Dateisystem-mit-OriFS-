#!/bin/sh

apt-get update
apt-get upgrade -y

apt-get install ori -y

apt-get dist-upgrade -y
apt-get autoremove -y
apt-get clean