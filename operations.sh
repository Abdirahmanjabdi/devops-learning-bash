#!/bin/bash

# Create directory
mkdir -p bash_demo
echo "Directory 'bash_demo' created."

# Move into directory
cd bash_demo || exit 1

# Create file
file="demo.txt"
touch "$file"
echo "File 'demo.txt' created."

# Write text with current date
echo "This file was created by a Bash script on $(date +%F)" > "$file"

# Display file contents
echo ""
echo "File contents:"
cat "$file"