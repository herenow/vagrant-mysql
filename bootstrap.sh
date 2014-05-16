#!/usr/bin/env bash

debconf-set-selections <<< 'mysql-server mysql-server/root_password password vagrant'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password vagrant'
apt-get update -y
apt-get -y install mysql-server

#Allow remote connections to root
mysql -u root -pvagrant -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '' WITH GRANT OPTION; FLUSH PRIVILEGES;"

#Bind to 0.0.0.0
sed -i "s/bind-address/#bind-address/g" /etc/mysql/my.cnf
/etc/init.d/mysql restart
