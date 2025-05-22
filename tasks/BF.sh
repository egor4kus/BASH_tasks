#!/bin/bash
read n
read -a arr0
ans=1
cur=1
IFS=$'\n'
arr=( `echo "${arr0[*]}" | sort` )
for ((i = 1; i < n; i++)); do
	if ((arr[i] == arr[i - 1])); then ((cur++))
	else
		if ((cur > ans)); then ans=$cur; fi
		cur=1
	fi
done
if ((cur > ans)); then ans=$cur; fi
echo $ans
