#!/bin/sh
#
# /etc/init.d/dobby
# init script for dobby.
#

USER="dobby"
NAME="Dobbycord"
PYTHON="/bin/python"
PIDFILE="/var/run/dobby.pid"
SCRIPT="/path/to/dobby.py" #TODO: change this

case "$1" in
    start)
        echo Starting $NAME
        $PYTHON $SCRIPT &
        ;;
    stop)
        echo Stopping $NAME
        kill (cat $PIDFILE)
        ;;
    *)
        echo "Usage: /etc/init.d/example{start|stop}"
        exit 1
        ;;
esac

exit 0