#!/bin/bash

workingDir=$(dirname "$(readlink -f "$0")")
workingDir="$workingDir/.."

pid=`ps -ef | awk '/[L]obbyPHPCliServer/{print $2}'`

if [ -z "$pid" ]; then
  false
else
  kill $pid
fi
