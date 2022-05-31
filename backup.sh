#!/bin/bash

#backing up req. files:

BACKUP_LOC="/usr/bin/*"
BACKUP_TARGET="/home/$USER/backup-variables"
LOGFILE="/home/$USER/log_file"

#calling an undeclared function
#create () {
#	echo "create backup dir" && mkdir $BACKUP_TARGET 2> /dev/null || echo "dir already exist!"
	#basically purges the log_file since it's never deleted
	#Also uses command substitutions to append current date/time to log_file
#	echo "$(date +"%x %y %z")" >> $LOGFILE
	#declares script local variable using 'local' parameter that is accessible to variable only 
	#local CLOUDSTUFF=36
#}

echo "Copying Files..." && cd $BACKUP_LOC
for i in $(ls); do
	cp -v "$i" $BACKUP_TARGET/"$i"-backup >> /home/$USER/$LOG_FILE 2>&1
done


#reassigning tail command to read input for specified number to coun
tail () {
	command tail -n $1
}

#calls the function
#create

echo "copy files" && cp -v $BACKUP_LOC $BACKUP_TARGET >> $LOGFILE  2>&1

grep -i denied /home/$USER/$LOGFILE | tail  2
exit 127
