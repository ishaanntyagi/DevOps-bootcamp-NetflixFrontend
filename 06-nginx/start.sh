#!/bin/bash
set -e

echo "Starting Nginx service..."
echo "--------------------------------"
sudo systemctl start nginx

echo ""
echo "Nginx service status..."
echo "--------------------------------"
sudo systemctl status nginx
