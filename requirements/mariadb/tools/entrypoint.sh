#!/bin/sh

if [ ! -d /var/lib/mysql/$DB_NAME ]; then
  mysql_install_db
  /usr/share/mariadb/mysql.server start
  mysql -e "\
    CREATE DATABASE IF NOT EXISTS $DB_NAME; \
    CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD'; \
    GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%'; \
    ALTER USER 'root'@'localhost' IDENTIFIED BY '$MARIADB_ROOT_PASSWORD'; \
    FLUSH PRIVILEGES; \
    "
  mysqladmin --user=root --password=$MARIADB_ROOT_PASSWORD shutdown
fi

exec "$@"
