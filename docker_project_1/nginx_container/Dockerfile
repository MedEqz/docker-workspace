# Get ARG
ARG ubuntu_version

FROM ubuntu:$ubuntu_version

ARG user
ARG php_version
ARG node_version
ARG nginx_version

# Prerequis
RUN apt-get -y update

# Prerequis pour php
RUN apt-get -y install software-properties-common
RUN apt-get -y install python-software-properties
RUN add-apt-repository -y ppa:git-core/ppa
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php

# Install necessary locales
RUN apt-get -y update
RUN apt-get install -y locales && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen

# Install Curl
RUN apt-get -y install unzip curl


# Install PHP libs for Composer
RUN apt-get -y install \
    php$PHP_VERSION-cli \
    php$PHP_VERSION-mbstring \
    php$PHP_VERSION-gd \
    php$PHP_VERSION-zip \
    php$PHP_VERSION-dom

# Install PHP libs for artisan migrate & seed
RUN apt-get -y install \
    php$PHP_VERSION-mysql \
    php$PHP_VERSION-ldap 

# Install Composer
RUN curl --silent --show-error https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_$node_version | bash -
RUN apt-get -y install nodejs

# Install nginx
RUN apt-get -y install nginx

# Install nano
RUN apt-get -y install nano

# Add user
RUN useradd -G www-data $user

# Copy Nginx config file
COPY nginx_container/default.conf /etc/nginx/sites-available/default

# Copy right bash
COPY nginx_container/right.sh /var/www


# Expose port
EXPOSE 80 443

# Define default command.
CMD ["nginx","-g","daemon off;"]
