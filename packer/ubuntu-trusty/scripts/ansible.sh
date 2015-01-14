#!/bin/bash
apt-get install -u software-properties-common
apt-get install -y python-software-properties
add-apt-repository ppa:rquillo/ansible
apt-get update -y
apt-get install -y ansible
