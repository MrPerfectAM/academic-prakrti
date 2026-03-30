#!/bin/bash
# Author: prakritiverma (24BHI10072)
# Purpose: Use 'read -p' to ask 3 interactive questions, construct a paragraph injecting the answers, and append it to a .txt file named after the user.

# Ask interactive questions
read -p "What is your name? " NAME
read -p "What is your favorite programming language? " LANGUAGE
read -p "What do you think is the most important aspect of open-source software? " ASPECT

# Construct the paragraph
PARAGRAPH="My name is $NAME, and I am a passionate advocate for open-source software. I believe that $LANGUAGE is an excellent language for collaborative development, and I think that the most important aspect of open-source software is $ASPECT."

# Append the paragraph to a .txt file named after the user
USER=$(whoami)
echo "$PARAGRAPH" >> $USER.txt
