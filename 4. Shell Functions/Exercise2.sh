#!/usr/bin/zsh

function file_count {
    echo "$1";(ls -1 ${1} | wc -l)
}
file_count $1