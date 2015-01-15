#!/bin/bash
apt-get update
apt-get install -y avahi-daemon avahi-discover avahi-dnsconfd libnss-mdns mdns-scan
apt-get upgrade -y
apt-get dist-upgrade -y
apt-get upgrade -y
