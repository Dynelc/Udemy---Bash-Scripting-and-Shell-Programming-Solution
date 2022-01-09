#!/usr/bin/zsh

while true
do
echo "\n1. Show disk usage."
echo "2. Show system uptime."
echo "3. Show the users logged into the system."
echo "Select action from the menu(Enter q to quit): "
read ACT
case $ACT in 1)
    df -h
    ;;
    2)
    uptime -p
    ;;
    3)
    who
    ;;
    q)
    echo "Goodbye!"
    break
    ;;
    *)
    echo "Invalid Option"
esac
done