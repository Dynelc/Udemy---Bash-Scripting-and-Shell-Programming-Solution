#!/usr/bin/zsh

if [ -e $1 ]
then
    echo "File $1 exists."
    if [ -f $1 ]
    then
        echo "File $1 is a regular file."
        exit 0
    elif [ -d $1 ]
    then
        echo "File $1 is a directory."
        exit 1
    else
        echo "File $1 is not a regular file or directory."
        exit 2
    fi
else
    echo "File $1 does not exist."
fi