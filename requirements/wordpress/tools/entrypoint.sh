#!/bin/sh

cd /var/www/wordpress/

if [ ! -d wp-content ]; then
wp core download --allow-root 
fi

wp core is-installed
if [ $? -eq 1 ]; then
wp core install --url="https://$HOSTNAME" --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_email=$WP_ADMIN_MAIL
fi

wp user create $WP_USER $WP_USER_MAIL --user_pass=$WP_USER_PASSWORD

/usr/sbin/php-fpm7 -F
