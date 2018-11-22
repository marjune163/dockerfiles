FROM php:7.0-apache-stretch
RUN \
    sed -i -e 's;http://[^/]*;http://mirrors.aliyun.com;' /etc/apt/sources.list; \
    apt-get update; \
    DEBIAN_FRONTEND=nointeractive apt-get install -yq libpng-dev libxml2-dev; \
	rm -rf /var/{lib,cache,log}/apt/; \
    a2enmod rewrite; \
    docker-php-ext-install pdo; \
    docker-php-ext-install soap; \
    docker-php-ext-install gd; \
    docker-php-ext-install mbstring; \
    docker-php-ext-install json; \
    docker-php-ext-install intl; \
    docker-php-ext-install mysqli; \
    docker-php-ext-install mysqlnd; \
    docker-php-ext-install mcrypt; \
    docker-php-ext-install xml;

