#!/bin/bash

now=`date +%D`

printf "What is the file name?\n"
#reads user input
read varName
if [ -f "$varName".csv ]
then
echo "file exists!"
else

touch "$varName.csv"
 
printf "$varName-${now}.csv has been created, Enjoy!\n "
fi
