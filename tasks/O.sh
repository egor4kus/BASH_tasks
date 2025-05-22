#!/bin/bash
while read str; do
        arr+=( $str )
done

arr=( ${arr[@]} ${arr[@]} )
echo ${arr[@]}
