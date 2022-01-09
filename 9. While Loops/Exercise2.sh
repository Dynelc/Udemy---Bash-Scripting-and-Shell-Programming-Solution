#!/usr/bin/zsh  

echo "Enter number of lines to read:"
read NUM
FILE="/etc/passwd"
INDES=1
while read LINE
do 
    echo "${INDES}: $LINE"
    ((INDES++))

    if [ $INDES -gt $NUM ]
    then
        break
    fi
done < $FILE
