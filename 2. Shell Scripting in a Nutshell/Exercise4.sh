#!/usr/bin/zsh

VAR="/etc/shadow"

if [ -e "${VAR}" ]; then
    echo "Shadow password are enabled"
    if [ -w "${VAR}" ]; then
        echo "You have write permission"
    else
        echo "You do not have write permission"
    fi
else
    echo "Shadow password are disabled"
fi