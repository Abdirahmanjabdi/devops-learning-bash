#!/bin/bash 
set -euo pipefail
#Write a script that monitors a directory for any changes (file creation, modification, or deletion) and logs the changes with a timestamp.

dir=${1:-.}
log_file="directory_changes.log"
echo "Monitoring directory: $dir"
while true; do
    inotifywait -e create -e modify -e delete -r "$dir" --format '%T %w %f %e' --timefmt '%Y-%m-%d %H:%M:%S' >> "$log_file"
done

