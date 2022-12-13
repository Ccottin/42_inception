FROM alpine:3.15

RUN apk update && apk add nginx openssl --no-cache

RUN mkdir /etc/nginx/ssl

COPY conf/default.conf /etc/nginx/http.d/default.conf

RUN openssl req -x509 -outform PEM -out /etc/nginx/ssl/ccottin.42.fr.crt\
	-newkey rsa:4096 -nodes\
	-keyout /etc/nginx/ssl/ccottin.42.fr.key\
	-subj "/C=FR/ST=Ile de France/L=Paris/O=42/OU=ccottin/CN=ccottin"

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
