# Use the official PHP image from the Docker Hub
FROM php:8.1-cli

# Set the working directory inside the container
WORKDIR /app

# Copy your PHP files into the container
COPY . /app

# Command to run PHP CLI
CMD ["php", "your_script.php"]
