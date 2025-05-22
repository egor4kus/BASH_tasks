#!/bin/bash
read n
for ((i = 0; i < n; i++)); do
        read str
        if [[ "$str" =~ ^[_.][0-9]+[a-zA-Z]*_?$ ]]
        then echo VALID
        else echo INVALID
        fi
done


