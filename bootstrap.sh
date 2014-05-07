#!/usr/bin/env bash

apt-get update
apt-get install -y curl openjdk-7-jdk

# Download and install crate
bash -c $(curl -L try.crate.io)

# Boot Script
sudo echo '#!/bin/sh' >> /etc/init.d/crate
sudo echo '/home/vagrant/crate*/bin/crate' >> /etc/init.d/crate
sudo chmod 755 /etc/init.d/crate
sudo update-rc.d crate defaults
