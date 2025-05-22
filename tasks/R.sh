#!/bin/bash

read n
ans=0
read str
for i in $str; do
	((ans ^= i))
done
echo $ans

