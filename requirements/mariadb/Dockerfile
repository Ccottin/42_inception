FROM alpine:3.15

RUN apk update && apk add mariadb

COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/

EXPOSE 3306

CMD ["mariadbd"]
