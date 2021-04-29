#!/bin/bash

#redirecting I/O, Utility commands and pipes
#	> = redirects to a file
#	>> = redirects to file append
#	< =  redirects file as input to a command

#       this example redirects the list into sort then directs the output into a new file
#	examples sort < unsorted_list.txt > sorted_list.txt

# 3 file descripters
# 0 /dev/tty0 stdin
# 1 /dev/tty0 stdout command > file name
# 2 /dev/tty0 stderr  command 2> error_file

# command > file 2>&1


echo "abc 123" > file

 # open "file" for reading and writing on fd 5
exec 5<> file
#read first 3 bytes of redirected input of fd5 into var
read -n 3 var <&5
#echo var
echo $var
#close file descripter
exec 5>&-

#exec 3< thisfile          # open "thisfile" for reading on file descriptor 3
#exec 4> thatfile          # open "thatfile" for writing on file descriptor 4
#exec 8<> tother           # open "tother" for reading and writing on fd 8
#exec 6>> other            # open "other" for appending on file descriptor 6
#exec 5<&0                 # copy read file descriptor 0 onto file descriptor 5
#exec 7>&4                 # copy write file descriptor 4 onto 7
#exec 3<&-                 # close the read file descriptor 3
#exec 6>&-                 # close the write file descriptor 6

#https://stackoverflow.com/questions/18351198/what-are-the-uses-of-the-exec-command-in-shell-scripts

#utility commands
# sort = sorts input and prints a sorted output
# uniq = removes duplicate lines of data from the input stream
# grep = searches incoming lines for matching text
# fmt =  recieves incoming text and outputs formatted text
# tr = translates characters
# head /tail = outputs first and last few lines of a file
# sed Stream Editor: more powerful than tr as a character translator
# awk An entire programming language designed for constructing filters.

# pipes

#command1 | command2



