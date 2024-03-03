#!/bin/bash

# Update the package lists and install squid

apt update -y
apt install -y squid
service squid start

# Save default config and put 

cp /etc/squid/squid.conf /etc/squid/squid.conf.default
cp ./squid.conf /etc/squid/squid.conf

# Squid start

service squid restart && service squid status
