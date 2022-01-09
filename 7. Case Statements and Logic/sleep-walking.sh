#!/usr/bin/zsh 

VAR=$1

case $VAR in start)
    /tmp/sleep-walking-server &
    ;;
    stop)
    kill $(cat /tmp/sleep-walking-server.pid)
    ;;
esac
