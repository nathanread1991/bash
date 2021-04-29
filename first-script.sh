#!/bin/bash

# Backup required files

echo "creating backup directory" && mkdir ~/backup || echo "Directory exists already"

echo "Copying file" && cp /usr/bin/* ~/backup || echo $?
