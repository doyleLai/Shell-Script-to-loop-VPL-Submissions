#!/bin/bash

for student in *
do
    if [ -d "$student" ]
    then
        cd "$student"
        f=`ls | grep -E '[0-9]$'`
        cd "$f"
        if [ -e *.py ]
        then
            studentName=$(pwd | rev | cut  -d'/' -f2 | rev)
            fileName=$(ls *.py)
            
            echo "$studentName"
            echo "$fileName"
            
        fi
        cd ../..
    fi
done   
