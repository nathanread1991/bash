#!/bin/bash

# Backup required files

#redirect stderr to /dev/null
echo "creating backup directory" && mkdir ~/backup 2> /dev/null

# echo copy file, cp all files in usr/bin to backup redirect stdout and stderr to log
echo "Copying file" && cp /usr/bin/* ~/backup > log_file 2>&1

#grep log for 
grep -i denied log_file | tail -n 2

exit 127
