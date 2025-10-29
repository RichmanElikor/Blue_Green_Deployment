#!/bin/sh
set -e

# Generate nginx.conf from template
envsubst '$ACTIVE_POOL' < /etc/nginx/templates/nginx.tmpl > /etc/nginx/conf.d/default.conf

# Start Nginx
nginx -g 'daemon off;'
