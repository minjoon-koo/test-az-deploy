# Dockerfile
FROM php:7.4-apache
COPY index.php /var/www/html/
COPY .env /var/www/html/
COPY .env2 /var/www/html/
EXPOSE 80
