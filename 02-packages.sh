#!/bin/bash
# Author: prakritiverma (24BHI10072)
# Purpose: Use OS-detection to define the correct package name for Python. Check installation status and extract the exact version.

# Detect the OS
if [ -f /etc/os-release ]; then
    # Ubuntu/Debian
    PACKAGE_MANAGER="apt"
    PACKAGE_NAME="python3"
else
    # Other Linux distributions
    echo "Unsupported Linux distribution."
    exit 1
fi

# Check if Python is installed
if $PACKAGE_MANAGER list --installed | grep -q $PACKAGE_NAME; then
    echo "================================================================================"
echo "                   Python AUDIT - PACKAGE INSPECTOR                "
echo "================================================================================"
echo "Status: $PACKAGE_NAME is INSTALLED on this system."
    # Extract the version of Python
    VERSION=$($PACKAGE_NAME --version | cut -d ' ' -f2-)
echo "Version: $VERSION"
    echo "--------------------------------------------------------------------------------"
    # Print philosophy notes for 4 FOSS tools (including Python)
    case $PACKAGE_NAME in
        python3)
            echo "FOSS Philosophy Notes:"
            echo " - Python: Python is a high-level, interpreted programming language that is widely used for web development, scientific computing, and data analysis."
            echo " - Linux: Linux is an open-source operating system that is widely used in servers, desktops, and mobile devices."
            echo " - Git: Git is a version control system that is widely used for software development and collaboration."
            echo " - Vim: Vim is a text editor that is widely used by programmers and developers."
            ;;
    esac
    echo "================================================================================"
else
    echo "$PACKAGE_NAME is NOT installed on this system."
fi