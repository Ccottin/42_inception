#!/bin/sh


cd /var/www/wordpress/

while [ ! -d wp-content ]
do
wp core download --allow-root 
done

wp core is-installed
if [ $? -eq 1 ]; then
wp core install --url="https://$HOSTNAME" --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_email=$WP_ADMIN_MAIL --admin_password=$WP_ADMIN_PASSWORD
wp user create $WP_USER $WP_USER_MAIL --user_pass=$WP_USER_PASSWORD
fi


/usr/sbin/php-fpm7 -F
