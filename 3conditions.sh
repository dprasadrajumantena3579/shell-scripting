#!/bin/bash
USER_ID=$(id -u)
if [ $USER_ID -eq 0 ]; then
    echo "You are running this script as root."
else
    echo "You are running this script as a regular user."
    exit 1
fi
echo "installing nginx"
dnf install nginx -y
if [ $? -eq 0 ]; then
    echo "nginx installed successfully."
else
    echo "Failed to install nginx."
    exit 1
fi
echo "Starting nginx service"
systemctl start nginx
if [ $? -eq 0 ]; then
    echo "nginx service started successfully."
else
    echo "Failed to start nginx service."
    exit 1
fi