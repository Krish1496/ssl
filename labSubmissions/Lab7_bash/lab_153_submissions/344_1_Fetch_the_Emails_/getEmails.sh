#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo  "Usage: ./getEmails.sh <file>"
    exit 1
fi 

if [[ ! -e $1 ]]; then
    echo "Input File doesn't exist"
    exit 1
fi

touch emails.txt sortedEmails.txt cseEmails.txt

grep -E "[a-zA-Z0-9]+@[a-zA-Z]+\.iitb\.ac\.in" $1 > emails.txt
sort -frb emails.txt > sortedEmails.txt
grep -E ".*@cse\.iitb\.ac\.in$" sortedEmails.txt > cseEmails.txt
