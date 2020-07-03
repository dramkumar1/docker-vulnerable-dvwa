#!/bin/bash

chown -R mysql:mysql /var/lib/mysql /var/run/mysqld

echo '[+] Starting mysql...'
service mysql start

echo '[+] Starting apache'
service apache2 start

usermod -a -G sudo www-data

while true
do
    tail -f /var/log/apache2/*.log
    exit 0
done
