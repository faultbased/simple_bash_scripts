#!/bin/bash

backup_dirs=("/etc")
dest_dir="/home/xoxo/Desktop/backup"
dest_server="xoxo-LT21" 
backup_date=$(date +%b-%d-%y)

echo "Starting backup of: ${backup_dirs[@]}"

for i in "${backup_dirs[@]}"; do
sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i
if [ $? -eq 0 ]; then
echo "$i backup succeeded."
else
echo "$i backup failed."
fi
scp /tmp/$i-$backup_date.tar.gz $dest_server:$dest_dir
if [ $? -eq 0 ]; then
echo "$i transfer succeeded."
else
echo "$i transfer failed."
fi
done

echo "Backup is done." 
