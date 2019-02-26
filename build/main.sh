#!/bin/bash

/etc/init.d/mysql start
mysqladmin -u root password "root"
mysql -e "CREATE DATABASE drupal DEFAULT CHARACTER SET utf8;" -uroot -proot
mysql -e "use drupal;source /db.sql;" -uroot -proot

/etc/init.d/apache2 start

/usr/bin/tail -f /dev/null
