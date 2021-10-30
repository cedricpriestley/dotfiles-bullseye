#!/bin/sh

killall -9 php
cd ~/drupal9-headless/docroot/
php -S localhost:8888 .ht.router.php &
cd ~/adminer-theme/lib
php -S localhost:3002 &
cd ~/drupal9-headless/docroot/modules/custom/mbz_migrate/data/test/
php -S localhost:8887 &

