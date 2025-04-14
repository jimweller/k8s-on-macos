#!/bin/bash

action=$1

usage() {
    scriptname=`basename $0`
    echo "USAGE:"
    echo "$scriptname start|stop"
}

if [[ "$action" != "start" && "$action" != "stop" ]]; then
  usage
  exit 1
fi


for i in cp-1 worker-1 worker-2
do
  limactl $action $i &
done

