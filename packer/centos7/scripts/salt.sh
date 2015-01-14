#!/bin/bash
yum install install -y salt-minion
mkdir -p /etc/salt/pki/minion
mkdir -p /etc/salt/pki/master
chkconfig salt-minion on
