FROM php:7.3.4-apache

RUN apt-get update

RUN apt-get install -y vim

RUN apt-get install -y mysql-client

RUN apt-get install -y ca-certificates \
    curl build-essential cmake libbz2-dev openssl libssl-dev \
    libyaml-dev --no-install-recommends libxml2-dev \
    libfreetype6-dev libjpeg62-turbo-dev libpng-dev libmcrypt-dev libzip-dev \
    openssh-server

RUN docker-php-ext-install openssl; exit 0
RUN cp /usr/src/php/ext/openssl/config0.m4 /usr/src/php/ext/openssl/config.m4
RUN docker-php-ext-install openssl

RUN docker-php-ext-install mbstring pdo pdo_mysql gd soap xml xmlrpc opcache iconv zip

RUN pecl install redis-4.0.2 \
    && pecl install xdebug-2.7.1 \
    && pecl install apcu-5.1.11 \
    && docker-php-ext-enable redis xdebug apcu

COPY php.ini /usr/local/etc/php
