#!/usr/bin/zsh
FILES=$(ls *.jpg)
for FILE in $FILES
do
    mv ${FILE} $(date +%Y-%m-%d)-${FILE}
done