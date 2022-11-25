FROM alpine:3.15

RUN apk update && apk add php7 php7-fpm php7-phar php-json php-mysqli \
	&& wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x  wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp \
	&& wp core download --allow-root;

COPY conf/wp-config.php /

EXPOSE 9000

ENTRYPOINT ["wp", "shell"]
