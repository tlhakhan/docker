#!/bin/bash

set -eu

PIDFILE="/var/run/smokeping/smokeping.pid"
COMMAND=/usr/sbin/smokeping

function _kill_process(){
    printf "KILL %s (%s)\n" "$(basename $COMMAND)" "$(cat $PIDFILE)"
    kill $(cat $PIDFILE)
    exit 0 
}

trap "_kill_process" SIGINT SIGTERM

$COMMAND
sleep 3

while [[ -f $PIDFILE ]] && kill -0 $(cat $PIDFILE) ; do
    sleep 1
done

exit 1
