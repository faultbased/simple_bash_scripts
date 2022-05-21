#!/bin/bash

echo "creating work backup log" >> ~/vagrant/nest/simple_bash_scripts/backup_logs && mkdir ~/vagrant/nest/work_backup

echo "copying files" >> ~/vagrant/nest/simple_bash_scripts/backup_logs && cp -v ~/vagrant/nest/simple_bash_scripts/work/* ~/vagrant/nest/work_backup/

echo "operation completed" >> ~/vagrant/nest/simple_bash_scripts/backup_logs
