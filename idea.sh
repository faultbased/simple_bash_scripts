#!/bin/bash
for i in {1..5}
do 
	echo "Please enter file name." 
	read varFile >> $varFile.txt
done

clearup () {
        rm -rf $varFile
        echo "Nevermind then..."
}

trap clearup SIGINT
