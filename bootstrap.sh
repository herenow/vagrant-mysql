#!/usr/bin/env bash

debconf-set-selections <<< 'mysql-server mysql-server/root_password password '
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password '
apt-get update -y
apt-get -y install mysql-server
