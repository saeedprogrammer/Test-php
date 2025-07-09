FROM php:8.2-cli


# Install MySQL server and PHP MySQL extension
RUN apt-get update && \
    apt-get install -y default-mysql-server && \
    docker-php-ext-install pdo pdo_mysql

# Optional: Configure MySQL to allow root access
#RUN service mysql start && \
#     mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root'; FLUSH PRIVILEGES;"

# Working directory
WORKDIR /app

# Copy your PHP files
COPY . .

# Start MySQL and run your PHP script
CMD service mysql start 
CMD php -S 0.0.0.0:3000
