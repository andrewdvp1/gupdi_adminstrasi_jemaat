#!/bin/sh
set -e

cd /var/www/html

# Cache config, routes, views
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Run migrations
php artisan migrate --force

# Create storage symlink
php artisan storage:link || true

# Create supervisor log directory
mkdir -p /var/log/supervisor

# Start supervisor (manages nginx + php-fpm)
exec supervisord -c /etc/supervisor/conf.d/supervisord.conf
