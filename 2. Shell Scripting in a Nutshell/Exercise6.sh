#!/usr/bin/zsh

echo "Enter filename: "
read FILE

if [ -e "${FILE}" ]; then
    echo "$(ls -ltr ${FILE})"
    echo "File exists"
    if [ -f "${FILE}" ]; then
        echo "File is a regular file"
    fi
    if [ -d "${FILE}" ]; then
        echo "File is a directory"
    fi
    if [ -r "${FILE}" ]; then
        echo "You have read permission"
    fi
    if [ -w "${FILE}" ]; then
        echo "You have write permission"
    fi
    if [ -x "${FILE}" ]; then
        echo "You have execute permission"
    fi
else
    echo "File does not exist"
fi