#!/usr/bin/zsh

echo "Enter file extension: "
read EXT

echo "Enter prefix to add: "
read PREFIX

if [ -z ${PREFIX} ]; then
    echo "No prefix entered"
    PREFIX=$(date +%Y-%m-%d)
fi

for FILE in *.${EXT}
do
    echo "Renaming ${FILE} to ${PREFIX}-${FILE}"
    mv ${FILE} ${PREFIX}-${FILE}
done