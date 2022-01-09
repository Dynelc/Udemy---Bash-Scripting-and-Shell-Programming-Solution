#!/usr/bin/zsh  

FILE="/etc/passwd"
INDES=1
while read LINE
do 
    echo "${INDES}: $LINE"
    ((INDES++))
done < $FILE
