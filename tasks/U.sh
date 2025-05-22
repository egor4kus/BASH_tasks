#!/bin/bash
read ex
while read str; do
	if [[ "$str" =~ ^(${ex})$ ]]; then echo YES 
	else echo NO; fi
done
