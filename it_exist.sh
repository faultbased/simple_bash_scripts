#!/bin/bash



printf "What is the file name?\n"
#reads user input
read varName
if [ -f "$varName" ]
then
echo "file exists!"
else

touch "$varName"
 
printf "$varName has been created, Enjoy! \n "
fi
