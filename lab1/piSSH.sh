#!/bin/bash

# Copy SSH key to ~/.ssh/authorized_keys of remote host.
if [ -e Carlos.txt ]
then
    echo Raspberry Pi Already has your Public Key.
else
    ssh-copy-id pi@192.168.0.3
    echo Public Key Successfully Copied.
fi

# SSH into Pi, and copy file by saving the CAT output into var.
    CARLOSFILE=$( ssh pi@192.168.0.3 "cat Carlos.txt" )
    echo $CARLOSFILE
    echo $CARLOSFILE > Carlos.txt

