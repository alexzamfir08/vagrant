#!/bin/bash
DIR="/var/www/exchange_app"
mkdir /var/www/exchange_app
cd $DIR && git init
git remote add origin https://github.com/LarryLeppo/my1hrdev.git	