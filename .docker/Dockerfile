FROM php:7.3-fpm

RUN apt-get update && apt-get install -y \
    libjpeg62-turbo-dev \
    libpng-dev \
    unzip \
    libzip-dev

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql

RUN apt-get install -y libzip-dev
RUN docker-php-ext-install zip

RUN docker-php-ext-install gd
RUN docker-php-ext-configure gd --with-gd --with-jpeg-dir --with-png-dir

RUN apt-get install -y zlib1g-dev libicu-dev g++
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

RUN npm install --global yarn

RUN apt-get install -y wget
RUN wget -O composer-setup.php https://getcomposer.org/installer
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer