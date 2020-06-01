#!/bin/bash

curl -sS https://getcomposer.org/installer | php -- -- install-dir=/usr/local/bin --filename=composer
chmod 777 /var/www/composer
cp /var/www/composer /usr/local/bin

./composer install
php artisan key:generate
php artisan migrate
php-fpm
