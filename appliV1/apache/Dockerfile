FROM php:8.0-apache

RUN docker-php-ext-install pdo pdo_mysql mysqli

RUN set -eux; \
    a2enmod rewrite; \
    a2enmod headers; \
    a2enmod proxy_http

RUN service apache2 start

COPY config.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /var/www/html
