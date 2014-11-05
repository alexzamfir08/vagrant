#!/bin/bash

if ! hash composer 2>/dev/null; then
	# Grab the installer and pipe it into PHP
	echo "Downloading composer"
	curl -sS https://getcomposer.org/installer | php

	echo "Moving composer to make it globally accessable"
	mv composer.phar /usr/bin/composer

	echo "Composer installed"
fi

composer self-update

cd /var/www/exchange_app
if [ -r "composer.json" ]
then
	echo "Installing declared packages from composer.json"
	composer install
else
	echo "WARNING: There was no (readable) composer.json. Create one and run 'composer install' to install dependencies."
fi;