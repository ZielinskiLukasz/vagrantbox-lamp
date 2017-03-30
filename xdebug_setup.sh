#!/bin/bash
 
if [ ! -e /etc/php/7.0/apache2/conf.d/20-xdebug.ini ] ; then
	# remove old version of Xdebug
	sudo apt-get remove php-xdebug
	cd /home/vagrant

	#download newer version of Xdebug
	wget -c http://xdebug.org/files/xdebug-2.5.0.tgz
	tar -xvzf xdebug-2.5.0.tgz
	cd xdebug-2.5.0/

	# install to obtain phpize
	sudo apt-get -y install php7.0-dev
	phpize

	./configure	
	make

	# copy compiled module and replace the old one
	sudo cp modules/xdebug.so /usr/lib/php/20151012/

	# copy Xdebug config
	sudo cp /vagrant/20-xdebug.ini /etc/php/7.0/apache2/conf.d/20-xdebug.ini

	#
	sudo mkdir /var/log
	sudo touch /var/log/xdebug.log
fi

