# Bash Scripting

##  Overview
This folder contains Bash scripts created while learning DevOps fundamentals. These scripts demonstrate automation, file handling, system monitoring, and basic Linux operations.

---

##  Scripts Included

### 1. Arithmetic Calculator
A script that performs basic math operations (addition, subtraction, multiplication, division) using user input.

### 2. File Operations Script
Creates directories and files, writes timestamps into files, and displays file contents.

### 3. File Permission Checker
Checks whether a file exists and displays its read, write, and execute permissions.

### 4. Backup Script
Copies `.txt` files from a source directory into a timestamped backup folder.

### 5. System Monitor Script
Displays CPU load, memory usage, disk usage, and top memory-consuming processes, then saves output to a log file.

---

## Key Learnings

- Bash variables and user input (`read`, `$1`)
- Conditional statements (`if`, `[[ ]]`, test flags like `-f`, `-d`)
- Loops (`for`, `while`)
- File operations (create, copy, write, read)
- Command substitution (`$(command)`)
- System monitoring commands (`top`, `free`, `df`, `ps`)
- Redirection and piping (`>`, `>>`, `|`)

---

##  Challenge I Overcame

Understanding how to properly handle errors and edge cases in Bash, especially:
- division by zero
- missing directories or files
- handling empty user input
- using correct condition syntax (`[[ ]]` vs `[ ]`)

---

## Why Bash Matters in DevOps

Bash is essential in DevOps because it enables:
- Automation of repetitive tasks
- Server configuration and management
- Log processing and monitoring
- CI/CD pipeline scripting
- Quick interaction with Linux systems

Most DevOps tools (Docker, Kubernetes, CI/CD pipelines) rely heavily on shell scripting for automation and orchestration.
