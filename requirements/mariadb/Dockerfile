FROM alpine:3.15

RUN apk update && apk upgrade && apk add mariadb mariadb-client \
	&& mkdir -p /run/mysqld \
	&& chown -R mysql:mysql /run/mysqld \
	&& chown -R mysql:mysql /var/lib/mysql 

EXPOSE 3306

COPY ./conf/my.cnf /etc/mysql/
COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/
COPY tools/entrypoint.sh /tmp/

RUN chmod +x /tmp/entrypoint.sh

ENTRYPOINT ["/tmp/entrypoint.sh"]

STOPSIGNAL SIGQUIT

CMD ["mysqld_safe"]


