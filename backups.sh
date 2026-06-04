#!/bin/bash
SOURCE_DIR="/home/jamaa/Arena/"
BACKUP_DIR="/home/jamaa/Arena/backups/"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"
tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" .
echo "Backup created at $BACKUP_DIR/$BACKUP_NAME"

cd "$BACKUP_DIR" || exit
ls -t | sed -e '1,5d' | while IFS= read -r file; do 
rm -f "$file"
done