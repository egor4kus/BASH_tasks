#!/bin/bash
read t
n="${#t}"
s=`echo $t | grep -o . | sort | tr -d '\n'`

c=${s:(n+1)/2-1:1}
echo $c

ans=`echo $t | grep -o . | grep -E [^$c] | tr -d '\n'`
if [[ $ans == "" ]]; then echo NULL
else echo $ans; fi
