#!/bin/bash
service mysql start
mysql -u root -e "CREATE DATABASE $MYSQL_DATABASE DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;CREATE USER $MYSQL_USER@'%' IDENTIFIED BY '"$MYSQL_PASSWORD"';GRANT ALL PRIVILEGES  ON  $MYSQL_DATABASE.* TO 'user'@'%';FLUSH PRIVILEGES;"
sleep 5
mysql -u root  -e  "ALTER USER 'root'@'localhost' IDENTIFIED BY '"$MYSQL_ROOT_PASSWORD"'; flush privileges;"
exec $@
