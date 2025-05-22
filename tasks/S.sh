#!/bin/bash
while read str; do
        if [[ $str == $(echo "$str" | rev) ]]
	then echo $str; fi
done
