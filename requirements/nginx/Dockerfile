FROM alpine:3.15

RUN apk update && apk add nginx

COPY ./nginx.conf /etc/nginx/

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
