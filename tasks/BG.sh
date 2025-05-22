#!/bin/bash
read t
for ((tt = 0; tt < t; tt++)); do
	read n
	IFS=$' '
	read -a arr
	IFS=$'\n'
	echo "${arr[*]:0:n/2}" | sort -n
	if ((n % 2 == 1)); then echo ${arr[n/2]}; fi
	echo "${arr[*]: n/2+n%2 : n-n/2}" | sort -rn
done
