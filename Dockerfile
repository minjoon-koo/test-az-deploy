# Dockerfile
FROM php:7.4-apache

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install required PHP extensions and dependencies
RUN apt-get update && \
    apt-get install -y libzip-dev && \
    docker-php-ext-install zip

# Install vlucas/phpdotenv
WORKDIR /var/www/html/
RUN composer require vlucas/phpdotenv

# Copy files to container
COPY index.php /var/www/html/
COPY .env /var/www/html/

EXPOSE 80

