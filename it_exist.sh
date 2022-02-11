#!/bin/bash
echo "What is the file name"

read varName
if [ -f "$varName" ]
then
echo "file exists!"
else
mkdir "$varName"
echo "file does not exist but it does now!"
fi
