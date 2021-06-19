FROM php:8-fpm-alpine
WORKDIR /var/www/html
RUN apk update && apk add libmcrypt-dev mysql-client && docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql
ADD . /var/www/html
RUN chown -R www-data:www-data /var/www && chown -R www-data:www-data /var/www/html



