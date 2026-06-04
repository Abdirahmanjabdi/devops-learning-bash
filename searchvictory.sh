#!/bin/bash
set -euo pipefail
#Creates a directory called Arena_Boss.
#2. Creates 5 text files inside the directory, named file1.txt to file5.txt.
#3. Generates a random number of lines (between 10 and 20) in each file.
#4. Sorts these files by their size and displays the list.
#5. Checks if any of the files contain the word 'Victory', and if found, moves the file to a directory called Victory_Archive.

mkdir -p Arena_Boss
mkdir -p Victory_Archive
cd Arena_Boss || exit 1
touch file{1..5}.txt
for file in file{1..5}.txt; do
    lines=$((RANDOM % 11 + 10)) # Random number between 10 and 20
    for i in $(seq 1 $lines); do
        echo "Line $i" >> "$file"
    done
done 
echo "Sorted by Size:"
for file in file{1..5}.txt; do
    if [[ -f "$file" ]]; then
        size=$(stat -c%s "$file")
        echo "$size $file"
    fi
done | sort -n
echo "Checking for 'Victory' in files..."
grep -l "Victory" file{1..5}.txt | xargs -I {} mv {} ../Victory_Archive/
echo "Files containing 'Victory' have been moved to Victory_Archive."
