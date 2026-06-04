#!/bin/bash

echo "Welcome to the Arena Management System"
echo "Please select an option:"
echo "1. Check disk space"
echo "2. Show system uptime"
echo "3. List users"

read -rp "Enter your choice: [1-3]: " choice

case $choice in
1) df -h ;;
2) uptime ;;
3) cut -d: -f1 /etc/passwd ;;
*) echo "Invalid option. Please select a number between 1 and 3." ;;
esac