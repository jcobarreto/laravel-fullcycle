#!/bin/bash

curl -sS https://getcomposer.org/installer | php -- -- install-dir=/usr/local/bin --filename=composer
cp /var/www/composer /usr/local/bin
chmod 777 /usr/loca/bin/composer

./composer install
php artisan key:generate
php artisan migrate
php-fpm
