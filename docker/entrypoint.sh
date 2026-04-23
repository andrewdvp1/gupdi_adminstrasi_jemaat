#!/bin/sh
set -e

cd /var/www/html

# Debug: print env vars to verify Railway is injecting them
echo "=== DB DEBUG ==="
echo "DB_HOST=$DB_HOST"
echo "DB_PORT=$DB_PORT"
echo "DB_DATABASE=$DB_DATABASE"
echo "DB_USERNAME=$DB_USERNAME"
echo "================"

# Run migrations
php artisan migrate --force

# Create storage symlink
php artisan storage:link || true

# Create supervisor log directory
mkdir -p /var/log/supervisor

# Start supervisor (manages nginx + php-fpm)
exec supervisord -c /etc/supervisor/conf.d/supervisord.conf
