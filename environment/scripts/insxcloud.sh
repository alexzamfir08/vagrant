#!/bin/bash
DIR="/var/www/exchange_app"

if [ ! -d $DIR ]; then
	mkdir $DIR
	mkdir $DIR/public
	# set owner for exchange_app
	chown -R vagrant: $DIR
fi

if [ ! -d $DIR/.git ]; then
	# init git
	cd $DIR && git init
    git remote add origin https://github.com/LarryLeppo/my1hrdev.git
fi

echo "Copy custom bash_profile"
cp -f /vagrant/environment/bash/.bash_profile /home/vagrant
