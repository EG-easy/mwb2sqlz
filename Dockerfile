FROM php:7.4-fpm-alpine
ADD ./composer.* /home/
WORKDIR /home

COPY --from=composer:2.0.9 /usr/bin/composer /usr/bin/composer

RUN apk upgrade --update && \
    apk --no-cache add git libzip-dev && \
		docker-php-ext-install zip && \
		composer install
