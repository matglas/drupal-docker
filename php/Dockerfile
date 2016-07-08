FROM vdmi/base

RUN apt-get update -q && \
    apt-get install -y \
    php5 php5-fpm php5-gd php5-ldap \
    php5-sqlite php5-pgsql php-pear php5-mysql php5-curl \
    php5-mcrypt php5-xmlrpc php5-intl php5-xdebug \
    build-essential curl mysql-client && \
    apt-get clean

# Install composer related packages.
ENV PATH $PATH:/root/.composer/vendor/bin
RUN cd $HOME \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*