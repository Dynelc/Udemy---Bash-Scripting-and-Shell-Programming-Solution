#!/usr/bin/zsh

for FILE in ${@}
do
    if [ -e "${FILE}" ]; then
        echo "${FILE} exists"
        if [ -f "${FILE}" ]; then
            echo "${FILE} is a regular file"
        fi
        if [ -d "${FILE}" ]; then
            echo "${FILE} is a directory"
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
        if [ -s "${FILE}" ]; then
            echo "${FILE} is not empty"
        fi
    else
        echo "${FILE} does not exist"
    fi
done
