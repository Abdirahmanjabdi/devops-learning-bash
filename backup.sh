#!/bin/bash
#Create a script that copies all .txt files from the Arena directory to a new directory called Backup
mkdir -p Backup
files=$(ls *.txt 2>/dev/null)
while IFS= read -r file; do
	cp "$file" Backup/
done <<< "$files"
