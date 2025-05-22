#!/bin/bash
read n
for ((i = 0; i < n; i++)); do
	read str
	if [[ "$str" =~ ^[0-9a-zA-Z][-._0-9a-zA-Z]*[0-9a-zA-Z]@[0-9a-zA-Z]+\.[a-zA-Z]{2,4}$ ]]
	then echo YES
	else echo NO
	fi
done
