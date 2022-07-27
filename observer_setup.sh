#!/bin/bash
set -x

sudo apt-get install -y nfs-common
sudo apt-get update

mkdir /var/webserver_monitor
sudo chown nobody:nogroup /var/webserver_monitor

sudo mount 192.168.1.1:/share/log /var/webserver_monitor
cd /var/webserver_monitor
sudo touch observer_1
