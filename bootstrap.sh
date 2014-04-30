#!/usr/bin/env bash

apt-get update
apt-get install -y curl openjdk-7-jdk

# Now install crate.io
bash -c "$(curl -L try.crate.io)"

