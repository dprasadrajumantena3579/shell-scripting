#!/bin/bash
echo "all args passed to script: $@"
echo "total number of args passed: $#"
echo "script name is: $0"
echo "first arg is: $1"
echo "second arg is: $2"
echo "present working directory is: $PWD"
echo "who is logged in: $USER"
echo "home directory is: $HOME"
echo "pid of current script: $$"
slepp 100 &
echo "pid of last background process: $!"
echo "all args as a single string: $"
echo "last command exit status: $?"