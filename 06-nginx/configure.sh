#!/bin/bash
set -e

echo ""
echo "Copying Nginx configuration files..."
echo "--------------------------------"
sudo cp config/default.conf /etc/nginx/conf.d/default.conf
sudo cp config/nginx.conf   /etc/nginx/nginx.conf

echo "Reloading Nginx..."
echo "--------------------------------"
sudo systemctl reload nginx

echo ""
echo "Nginx service status..."
echo "--------------------------------"
sudo systemctl status nginx
