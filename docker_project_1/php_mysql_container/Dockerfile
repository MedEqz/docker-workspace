ARG php_version

FROM php:$php_version-fpm


# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    locales \
    libpng-dev \
    zlib1g-dev \
    libxml2-dev \
    libzip-dev \
    libonig-dev \
    graphviz \
    jpegoptim optipng pngquant gifsicle \
    libldap2-dev

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install pdo_mysql ldap zip gd

RUN docker-php-source delete

WORKDIR /var/www

CMD ["php-fpm"]
