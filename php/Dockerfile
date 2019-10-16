FROM php:7.1-apache-stretch

# Set working directory
WORKDIR /var/www/html

# Install composer
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add composer.json to WORKDIR and install dependencies
COPY composer.json .
RUN composer install

# Add the remaining source code files to WORKDIR
COPY . .

# Apache is listening on port 80
EXPOSE 80

# Set www-data as owner and enable rewrite module
RUN usermod -u 1000 www-data; \
    a2enmod rewrite; \
    chown -R www-data:www-data /var/www/html
