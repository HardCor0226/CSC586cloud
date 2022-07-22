#!/bin/bash
set -x

sudo apt-get install -y nfs-common
sudo apt-get update

mkdir webserver_log

sleep 1m
sudo mount 192.168.1.1:/share/log webserver_log
cd webserver_log
sudo touch observer_1
