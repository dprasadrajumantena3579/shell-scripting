#!/bin/bash
userid=$1
if [ "$userid" -ne 0 ]; then
    echo "You are not a root user"
    exit 1

echo "installing nginx"
dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "nginx installation failed"
    exit 2
else
    echo "nginx installed successfully"
fi