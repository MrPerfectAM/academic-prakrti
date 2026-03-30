#!/bin/bash
# Author: prakritiverma (24BHI10072)
# Purpose: Extract Linux Distro, Kernel, Current User, Home Directory, Uptime, and Date.

# Extract Linux Distribution
DISTRO=$(cat /etc/os-release | grep "NAME" | cut -d '=' -f2-)

# Extract Kernel Version
KERNEL=$(uname -r)

# Extract Current User
USER=$(whoami)

# Extract Home Directory
HOME_DIR=$(pwd)

# Extract System Uptime
UPTIME=$(uptime -p)

# Extract Current Date and Time
DATE=$(date)

echo "================================================================================"
echo "                   Python AUDIT - SYSTEM IDENTITY                   "
echo "================================================================================"
echo "Linux Distribution: $DISTRO"
echo "Kernel Version:     $KERNEL"
echo "Current User:       $USER"
echo "Home Directory:     $HOME_DIR"
echo "System Uptime:      $UPTIME"
echo "Current Date/Time:  Mon Mar 30 2026 18:26:19 GMT+0000 (Coordinated Universal Time)"
echo "--------------------------------------------------------------------------------"
echo "Message: This system runs on Open Source software, providing freedom to study, change, and distribute."
echo "================================================================================"