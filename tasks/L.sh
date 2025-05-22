#!/bin/bash

for ((i = 0; ; i++)); do
	if read str; then arr[i]=$str 
	else break
	fi
done
echo ${arr[@]}
