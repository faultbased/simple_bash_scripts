#!/bin/bash

if [ -z "$1" ]; then
	echo "You have failed at life... please enter a parameter..."
	exit 255;
fi

MYLOG=$1

function ctrlc {
	rm -rf /home/$USER/work_backup
	rm -f /home/$USER/$MYLOG
	echo "Received Ctrl+C"
	exit 255	
}

trap ctrl
echo "Timestamp before work is done $(date + "%D %T")" >> /home/$USER/$MYLOG
echo "Creating backup directory" >> /home/$USER/$MYLOG
mkdir /home/$USER/work_backup

echo "Copying Files" >> /home/$USER/$MYLOG && cp -v /home/$USER/work/* /home/$USER/work_backup/ >> /home/$USER/$MYLOG
echo "finished copying files" >> /home/$USER/$MYLOG
echo "timestamp after work is done $(date +"%D %T" >> /home/$USER/$MYLOG && sleep 15
