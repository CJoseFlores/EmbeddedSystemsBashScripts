#!/bin/bash

# Parses out IP addreses from given I/O stream  or file and saves to list.
if [ $# -gt 1 ]
then
    echo Invalid number of arguments. Please only provide 1 file, or pipe to this program.
elif [ $# -eq 1 ]
then
    egrep -o "([0-9]{1,3}\.){3}[0-9]{1,3}" $1 > ipList.txt
else
    egrep -o "([0-9]{1,3}\.){3}[0-9]{1,3}" /dev/stdin > ipList.txt
fi
