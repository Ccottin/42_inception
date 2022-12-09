FROM alpine:3.15

RUN apk update && apk add mariadb mariadb-client \
	&& mkdir -p /run/mysqld \
	&& chown -R mysql:mysql /run/mysqld
#	&& chown -R mysql:mysql /var/lib/mysqld

COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/

COPY ./conf/my.cnf /etc/mysql/

COPY tools/entrypoint.sh /tmp/

EXPOSE 3306

ENTRYPOINT ["sh", "/tmp/entrypoint.sh"]

