ARG php_version

FROM php:$php_version-fpm

ENV ACCEPT_EULA=Y

# Microsoft SQL Server Prerequisites
RUN apt-get update && apt-get install -y \ 
    build-essential \
    libfreetype6-dev \
    libmcrypt-dev \
    libonig-dev \
    gnupg libzip-dev zip \
    && curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && curl https://packages.microsoft.com/config/debian/9/prod.list \
    > /etc/apt/sources.list.d/mssql-release.list \
    && apt-get install -y --no-install-recommends \
    locales \
    apt-transport-https \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen \
    && apt-get update \
    && apt-get -y --no-install-recommends install \
    unixodbc-dev \
    msodbcsql17 \
    libldap2-dev

RUN docker-php-ext-configure zip \
    && docker-php-ext-install mbstring pdo pdo_mysql zip ldap \
    && pecl install sqlsrv pdo_sqlsrv xdebug \
    && docker-php-ext-enable sqlsrv pdo_sqlsrv xdebug

WORKDIR /var/www

#ENTRYPOINT /usr/sbin/php-fpm --nodaemonize

CMD ["php-fpm"]
