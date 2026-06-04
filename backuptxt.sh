#!/bin/bash

# Prompt user for source directory
read -p "Enter source directory: " src_dir

# Check if source directory exists
if [[ ! -d "$src_dir" ]]; then
    echo "Error: Directory '$src_dir' does not exist."
    exit 1
fi

# Create timestamp
timestamp=$(date +%F_%H-%M)

# Create backup directory name
backup_dir="backup_$timestamp"

mkdir -p "$backup_dir"
echo ""
echo "Backup directory created: $backup_dir"
echo "Copying .txt files..."

# Copy .txt files and count them
count=0

for file in "$src_dir"/*.txt; do
    if [[ -f "$file" ]]; then
        cp "$file" "$backup_dir/"
        ((count++))
    fi
done

echo ""
echo "Backup complete! Files backed up: $count"