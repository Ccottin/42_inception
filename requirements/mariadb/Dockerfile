FROM alpine:3.15

COPY ./conf/my.cnf /etc/mysql/

EXPOSE 3306
RUN apk update && apk add mariadb mariadb-client\
	&& mkdir -p /run/mysqld \
	&& chown -R mysql:mysql /run/mysqld \
#	&& chown -R mysql:mysql /var/lib/mysql \
#	&& /usr/bin/mariadb setup \
	&& mysql_install_db --user=mysql --datadir=/var/lib/mysql


#COPY tools/entrypoint.sh /tmp/

EXPOSE 3306

#ENTRYPOINT ["sh", "/tmp/entrypoint.sh"]

