# Base image
FROM  ubuntu:kinetic


RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y  php php-cli php-mbstring php-xml php-zip php-curl  unzip curl 

#ENV APP_DEBUG=true
# Copy project files
COPY . .

# Install composer and tweak a bit
RUN curl -sS https://getcomposer.org/installer | php 
RUN mv composer.phar /usr/local/bin/composer 
RUN composer global require laravel/installer 
RUN composer install

# Set the environment variable and generate key 
RUN cp .env.example .env 
RUN php artisan key:generate
# Expose port 
EXPOSE 8000

# Start  server
CMD ["php", "artisan", "serve", "--port=8000", "--host=0.0.0.0"]


