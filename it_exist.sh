#!/bin/bash
echo "What is the file name"

read varName
if [ -f "$varName" ]; then
echo "file exists!"
else
echo "file does not exist"
fi
