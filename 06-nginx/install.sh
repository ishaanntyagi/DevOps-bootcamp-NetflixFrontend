#!/bin/bash
set -e

echo ""
echo "Installing Nginx dependencies..."
echo "--------------------------------"

sudo apt update
sudo apt install -y curl gnupg2 ca-certificates lsb-release ubuntu-keyring

curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor \
    | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null

echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] \
    http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" \
    sudo tee /etc/apt/sources.list.d/nginx.list

echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" \
    sudo tee /etc/apt/preferences.d/99nginx

echo ""
echo "Installing Nginx..."
echo "--------------------------------"

sudo apt update
sudo apt install nginx

echo ""
echo "Create Nginx user 'nginx' and check whether it exists..."
echo "--------------------------------"
sudo useradd -r -s /bin/false nginx
sudo getent passwd nginx
