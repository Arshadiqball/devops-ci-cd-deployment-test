# Use the official PHP image as the base
FROM php:8.1-apache

# Install necessary PHP extensions
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Copy the current directory contents into the working directory in the container
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Set the required permissions
RUN chown -R www-data:www-data /var/www/html

# Enable mod_rewrite for Apache
RUN a2enmod rewrite

# Expose port 80 for the web server
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
