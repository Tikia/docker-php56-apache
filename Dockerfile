FROM debian:stretch
MAINTAINER Tikia "renaud@tikia.net"

#Update OS
RUN apt-get update
RUN apt-get -y upgrade

#Isntall NTP
RUN apt-get -y install ntp ntpdate

#Install Apache2
RUN apt-get -y install apache2

#Activate Apache module : SSL, rewrite include status
RUN a2enmod rewrite ssl include status
RUN a2ensite default-ssl

#Install PHP 7.2
RUN apt-get -y install php5.6 libapache2-mod-php5.6

#Install PHP extension
RUN apt-get -y install php5.6-common php5.6-mysql php5.6-curl php5.6-gd php5.6-intl php-pear php-imagick php5.6-imap mcrypt php5.6-mcrypt php-memcache php5.6-pspell php5.6-recode php5.6-sqlite3 php5.6-tidy php5.6-xml php5.6-xmlrpc php5.6-xsl php5.6-mbstring php-gettext php5.6-zip imagemagick php-imagick

#Install letsencrypt
RUN apt-get -y install letsencrypt.sh-apache

#Restart Apache
RUN service apache2 restart

#Define port
EXPOSE 80

#Define Volume
VOLUME ["/var/www/", "/etc/apache24/vhosts/", "/var/log/apache"]

#Define CMD
#CMD [""]
