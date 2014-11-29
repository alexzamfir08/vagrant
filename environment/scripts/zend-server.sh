#!/bin/bash

echo "Installing Zend Server 7"
tar zfxv /vagrant/environment/packages/zs7.tar.gz -C /tmp

cd /tmp/ZendServer-RepositoryInstaller-linux

# install with PHP 5.4
./install_zs.sh 5.4 --automatic

echo "Adding Apache service to autostart"
chkconfig httpd on

echo "Copying httpd config"
cp -f /vagrant/environment/config/httpd.conf /etc/httpd/conf

echo "Copying php.ini"
cp -f /vagrant/environment/config/php.ini /usr/local/zend/etc

if [ -d /var/lib/php/session ]
then
	chown -R vagrant: /var/lib/php/session
fi

echo "Starting httpd service"
service httpd restart

echo "Add port 80 to iptables"
iptables -I INPUT 1 -p tcp --dport 80 -j ACCEPT
iptables -I INPUT 1 -p tcp --dport 10081 -j ACCEPT
iptables -I INPUT 1 -p tcp --dport 443 -j ACCEPT
service iptables save

echo "Zend Server installed"
