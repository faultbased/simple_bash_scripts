#!/bin/bash



printf "What is the file name?\n"
#reads user input
read varName
if [ -f "$varName" ]
#if the statement returns true(exit status/code 0), then this will run!
then
#otherwise if it returns false(exit status/code non-zero), then this will execute instead
  echo "file exists!"
else
  touch $varName



fi

clearup () {
        rm -rf $varName
        echo "Nevermind then..."
}

trap clearup SIGINT
