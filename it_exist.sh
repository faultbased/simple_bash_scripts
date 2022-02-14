#!/bin/bash
echo "What is the file name"
#reads user input
read varName
if [ -f "$varName"* ]
then
echo "file exists!"
else
touch $varName
echo "file does not exist but it does now!"
fi
