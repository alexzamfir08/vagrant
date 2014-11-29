#!/bin/bash

echo "Update packages. This may take a while ..."
yum -y update
echo "Finished updating packages"

echo "Installing additional packages"
yum install -y mc curl
echo "Finished installing packages"

echo "Setup Guest Additions"
/etc/init.d/vboxadd setup
echo "Finished the setup of Guest Additions"