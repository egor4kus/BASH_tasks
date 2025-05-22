#!/bin/bash
read l r
for ((i = 0; ; i++)); do
        if read str; then arr[i]=$str
        else break
        fi
done
    
echo ${arr[@]:l:((r-l+1))}
