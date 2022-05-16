#!/bin/bash

#backing up req. files:

echo "create backup dir" && mkdir ~/backup 2> /dev/null || echo "dir already exist!"

echo "copy files" && cp -v /usr/bin/* ~/backup > log_file 2>&1

grep -i denied log_file | tail -n 1

exit 127
