# docker-php56-apache

Based on Debian 9 Stretch (docker image debian/stretch)

Install :
- NTP, NTPdate
- Apache2
- PHP 5.6
- libapache2-mod-php5.6
- php5.6-common php5.6-mysql php5.6-curl php5.6-gd php5.6-intl php-pear php-imagick php5.6-imap mcrypt php5.6-mcrypt php-memcache php5.6-pspell php5.6-recode php5.6-sqlite3 php5.6-tidy php5.6-xml php5.6-xmlrpc php5.6-xsl php5.6-mbstring php-gettext php5.6-zip imagemagick php-imagick5.6
- python-letsencrypt-apache

Config Apache :
- Active module : rewrite ssl include status
- Active site : default-ssl
- vHost file

Port exposed : 80

Volumes :
- httpdocs : /var/www/
- vHost conf : /etc/apache24/vhost/
- log : /var/log/apache/
