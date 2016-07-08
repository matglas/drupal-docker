FROM vdmi/php

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && \
    apt-get install -y \
    libapache2-mod-php5 apache2 \
    libsqlite3-0
EXPOSE 80

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN a2enmod rewrite

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]