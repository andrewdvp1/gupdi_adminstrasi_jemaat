#!/bin/sh
set -e

cd /var/www/html

# Clear any cached config to ensure env vars are read fresh
php artisan config:clear
php artisan cache:clear

# Run migrations
php artisan migrate --force

# Create storage symlink
php artisan storage:link || true

# Create supervisor log directory
mkdir -p /var/log/supervisor

# Start supervisor (manages nginx + php-fpm)
exec supervisord -c /etc/supervisor/conf.d/supervisord.conf
