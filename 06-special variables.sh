#!/bin/bash

echo "All variables passed to script: $@"
echo "no. of variables passed: $#"
echo "First varible: $1"
echo "script name: $0"
echo "who is running this: $USER"
echo "which directory: $PWD"
echo "Home directory: $HOME"
echo "PID of the current script: $$"
sleep 5 &
echo "PID of the background command running just now: $!"
wait $!
echo "Line number: $LINENO"
echo "script executed in $SECONDS seconds"