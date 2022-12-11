FROM alpine:3.15

RUN apk update && apk add php7 php7-fpm php7-phar php-json php-mysqli php7-mbstring  \
	&& wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x  wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp \
	&& adduser -S nginx \
	&& addgroup -S nginx

COPY ./conf/www.conf /etc/php7/php-fpm.d/

EXPOSE 9000

COPY ./conf/wp-config.php /var/www/wp-config.php

WORKDIR /var/www/wordpress/

COPY ./tools/entrypoint.sh /tmp/entrypoint.sh

RUN chmod 777 /tmp/entrypoint.sh

#CMD ["sleep", "100000"]

ENTRYPOINT ["/tmp/entrypoint.sh"]
