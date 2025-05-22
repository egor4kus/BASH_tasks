#!/bin/bash
while read str; do
        arr+=( `echo $str | sed 's/[A-Z]/./'` )
done

echo ${arr[@]} 
