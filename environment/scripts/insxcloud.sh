#!/bin/bash
DIR="/var/www/exchange_app"

if [ ! -d $DIR ]; then
	mkdir $DIR
	# set owner for exchange_app
	chown -R vagrant: $DIR

	# init git
	cd $DIR && git init
    git remote add origin https://github.com/LarryLeppo/my1hrdev.git
fi
