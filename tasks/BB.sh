#!/bin/bash
read n
for ((i = 0; i < n; i++)); do
	read s
	while [[ "$s" =~ ^[^a-zA-Z0-9_]*([a-zA-Z0-9_]+)(.*)$ ]]; do
		arr+=( ${BASH_REMATCH[1]} )
		s="${BASH_REMATCH[2]}"
	done
done

read q
for ((i = 0; i < q; i++)); do
	read s
	cnt=0
	for word in "${arr[@]}"; do
		if [[ "$word" == "$s" ]]  
		then ((cnt++)); fi
	done
	echo $cnt
done
