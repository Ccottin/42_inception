FROM alpine:3.15

RUN apk update && apk add php7 php7-fpm php7-phar php-json php-mysqli \
	&& wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x  wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp \
	&& adduser -S nginx \
	&& addgroup -S nginx

COPY conf/www.conf /etc/php7/php-fpm.d
COPY conf/wp-config.php /var/www/html/wordpress/

EXPOSE 9000

WORKDIR /var/www/html/wordpress/

#RUN  wp core download --allow-root && wp core install

#ENTRYPOINT ["/usr/sbin/php-fpm7", "-F"]
