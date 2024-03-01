# Image for Apache Server
FROM ubuntu:20.04 AS apache

# Install Apache and PHP
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y apache2 php libapache2-mod-php && \
    rm -rf /var/lib/apt/lists/*

# Copy Apache configuration files
COPY apache-config/ /etc/apache2/

# Copy PHP application files
COPY php-app/ /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache service
CMD ["apache2ctl", "-D", "FOREGROUND"]


# Image for MySQL Server
FROM mysql:8 AS mysql

# Set MySQL root password
ENV MYSQL_ROOT_PASSWORD=root_password

# Create a database and user
ENV MYSQL_DATABASE=my_database
ENV MYSQL_USER=my_user
ENV MYSQL_PASSWORD=my_password

# Copy SQL initialization scripts
COPY mysql-scripts/ /docker-entrypoint-initdb.d/
