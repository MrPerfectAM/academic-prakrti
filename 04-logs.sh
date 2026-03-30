#!/bin/bash
# Author: prakritiverma (24BHI10072)
# Purpose: Accept a target log file as $1. Add a comment suggesting a realistic log path for Python. Use a 'while read' loop to count occurrences of a keyword ($2), then use 'tail' to print the last 5 matches.

# Suggest a realistic log path for Python
# /var/log/syslog or /var/log/messages

# Check if the log file exists
if [ -f $1 ]; then
    # Count occurrences of the keyword
    COUNT=0
    while read -r line; do
        if echo $line | grep -q $2; then
            ((COUNT++))
        fi
    done < $1
    echo "Found $COUNT occurrences of '$2' in $1."
    # Print the last 5 matches
    echo "Last 5 matches:"
    tail -n 5 $1 | grep $2
else
    echo "$1 does not exist."
fi