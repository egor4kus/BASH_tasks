#!/bin/bash

ans=1
arr[1]=1
for ((i = 2; i <= 1000; i++)); do
	ans=`echo "$ans * $i" | BC_LINE_LENGTH=0 bc`
	arr[i]=$ans
done


read t
for ((tt = 0; tt < t; tt++)); do
	read n
	echo ${arr[n]}
done
