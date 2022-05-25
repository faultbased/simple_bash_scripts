#!/bin/bash

MYLOG=$1

echo "Timestamp before work is done $(date +"%D %T")" >> /home/$USER/$MYLOG
echo "Creating backup directory" >> /home/$USER/$MYLOG && mkdir /home/$USER/work_backup
#parameter is name of log file! which is also a global variable!
echo "Copying Files" >> /home/$USER/$MYLOG && cp -v /home/$USER/work/* /home/$USER/work_backup/ >> /home/$USER/$MYLOG

echo "Finished Copying Files" >> /home/$USER/$MYLOG
echo "Timestamp after work is done $(date +"%D %T")" >> /home/$USER/$MYLOG
