#!/bin/bash

#backing up req. files:

BACKUP_LOC="/usr/bin/*"
BACKUP_TARGET="/home/$USER/backup-variables"
LOGFILE="/home/vagrant/log_file"

#calling an undeclared function
init () {
	echo "create backup dir" && mkdir $BACKUP_TARGET 2> /dev/null || echo "dir already exist!"
	#basically purges the log_file since it's never deleted
	echo "" > $LOGFILE
	#declares script local variable using 'local' parameter that is accessible to variable only 
	local CLOUDSTUFF=36
}

#reassigning tail command to read input for specified number to count
tail () {
	command tail -n $1
}

echo "copy files" && cp -v $BACKUP_LOC $BACKUP_TARGET >> $LOGFILE  2>&1

grep -i denied $LOGFILE | tail  2

exit 127
