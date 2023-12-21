FROM alpine:latest

RUN apk update && \
    apk add --no-cache apache2 php php-apache2 php-mysqli php-gd && \
    rm -rf /var/cache/apk/*

RUN rm /var/www/localhost/htdocs/index.html

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
