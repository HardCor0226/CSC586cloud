#!/bin/bash
set -x

sudo apt-get install -y nfs-common
sudo apt-get update

mkdir /var/webserver_log

sleep 1m
sudo mount 192.168.1.1:/share/log /var/webserver_log
cd /var/webserver_log
sudo touch observer_1
