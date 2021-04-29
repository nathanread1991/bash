#!/bin/bash

echo "backing up home dir" >> log-file.log
mkdir ~/work_backup >> log_file.log
echo "copying files" >> log_file.log
cp -rv  work ~/work_backup/ >> log-file.log
echo "Finished Copying Files" >> log-file.log
