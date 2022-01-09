#!/usr/bin/zsh

function file_count {
    echo "Number of files in the current directory: $(ls -1 | wc -l)"
}
file_count