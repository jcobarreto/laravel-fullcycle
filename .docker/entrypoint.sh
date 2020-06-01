#!/bin/bash

curl -sS https://getcomposer.org/installer | php -- -- install-dir=/usr/local/bin --filename=composer
cp /var/www/composer /usr/local/bin

./composer install
php artisan key:generate
php artisan migrate
php-fpm
