#!/bin/bash
read n
len=${#n}
for ((i = 0; i < len; i++)); do
	cur="${n:0:i}${n:i+1:len-i-1}"
	if ((cur > ans)); then ans=$cur; fi
done
echo $ans
