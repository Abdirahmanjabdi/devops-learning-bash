#!/bin/bash

# System Monitor Script

# Create timestamped log file
timestamp=$(date +%F_%H-%M-%S)
log_file="system_monitor_$timestamp.log"

echo "System Monitor Report - $timestamp" > "$log_file"
echo "===================================" >> "$log_file"
echo "" >> "$log_file"

# CPU usage (simple load average)
echo "CPU Usage (load average):" >> "$log_file"
uptime >> "$log_file"
echo "" >> "$log_file"

# Memory usage
echo "Memory Usage:" >> "$log_file"
free -h >> "$log_file"
echo "" >> "$log_file"

# Disk usage
echo "Disk Usage:" >> "$log_file"
df -h >> "$log_file"
echo "" >> "$log_file"

# Top 5 processes by memory usage
echo "Top 5 Processes by Memory Usage:" >> "$log_file"
ps aux --sort=-%mem | head -6 >> "$log_file"

echo "" >> "$log_file"

echo "Report saved to $log_file"