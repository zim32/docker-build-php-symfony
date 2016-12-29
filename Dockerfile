FROM zim32/php-fpm:latest

RUN \
	apt-get update && apt-get upgrade -y && \
	curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
	curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony && \
	chmod a+x /usr/local/bin/symfony && \
	cd /home/zim32/www && symfony new app && \
	chown -R zim32:zim32 /home/zim32

VOLUME ["/home/zim32/www/app"]
