#!/bin/bash
# Author: prakritiverma (24BHI10072)
# Purpose: Define an array of directories and dynamically append 2 specific paths for Python. Loop through them, check existence, and use 'awk' to extract size, permissions, and owner into clean columns.

# Define the array of directories
DIRECTORIES=(/etc /var/log /usr/bin /usr/lib)

# Append Python-specific directories
DIRECTORIES+=(/usr/lib/python3 /usr/bin/python3)

# Loop through the directories
for DIR in "${DIRECTORIES[@]}"; do
    # Check if the directory exists
    if [ -d $DIR ]; then
        echo "Directory: $DIR"
        # Use 'awk' to extract size, permissions, and owner
        ls -l $DIR | awk '{print $5 " " $1 " " $3}'
    else
        echo "$DIR does not exist."
    fi
    echo
Done
