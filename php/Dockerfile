FROM php:7.4.22-apache

# Set working directory
WORKDIR /var/www/html

# Install PDO MySQL driver (optional)
RUN docker-php-ext-install pdo_mysql

# Enable mod rewrite (optional)
RUN a2enmod rewrite

# Install git, zip and composer (optional)
RUN apt update \
 && apt install -y git zip \
 && curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install composer dependencies (optional)
COPY composer.* ./
RUN composer install \
    --ignore-platform-reqs \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --prefer-dist

# Add source code files to WORKDIR
COPY . .

# Ensure file ownership for source code files
RUN chown -R www-data:www-data .

# Application port (optional)
EXPOSE 80

# Container start command
CMD ["apache2-foreground"]
