#!/usr/bin/zsh

if [ -e "${1}" ]; then
    echo "$(ls -ltr ${1})"
    echo "File exists"
    if [ -f "${1}" ]; then
        echo "File is a regular file"
    fi
    if [ -d "${1}" ]; then
        echo "File is a directory"
    fi
    if [ -r "${1}" ]; then
        echo "You have read permission"
    fi
    if [ -w "${1}" ]; then
        echo "You have write permission"
    fi
    if [ -x "${1}" ]; then
        echo "You have execute permission"
    fi
else
    echo "File does not exist"
fi