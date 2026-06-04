#!/bin/bash
# Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.

set -euo pipefail
for file in *.txt; do
       if [[ -f "$file" ]]; then
	       size=$(stat -c %s "$file")
       echo "$size $file"	
       fi
done | sort -n | cut -d' ' -f2-       
