FROM alpine:3.15

RUN apk update && apk add mariadb mariadb-client 

COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/

COPY ./conf/my.cnf /etc/mysql/

EXPOSE 3306

CMD ["mariadbd"]
