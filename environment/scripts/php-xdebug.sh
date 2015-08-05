#!/bin/bash

XDEBUG_VERSION="$(pecl info Xdebug | grep xdebug-2.3.2)"

if [[ $XDEBUG_VERSION != *"2.3.2"* ]]; then
    echo "Installing XDebug"
    /usr/local/zend/bin/pecl install Xdebug

    echo "Appending xdebug configuration details to php.ini"
    echo "
    [Xdebug]
    xdebug.remote_enable=1
    xdebug.profiler_enable=1
    xdebug.remote_host=192.168.56.1
    xdebug.remote_port=9000
    zend_extension=/usr/local/zend/lib/php_extensions/xdebug.so" >> /usr/local/zend/etc/php.ini
fi