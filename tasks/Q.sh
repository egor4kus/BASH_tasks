#!/bin/bash
while read str; do
        arr+=( $str )
done

printf "%s\n" "${arr[@]}" | sed '/[Aa]/d' | tr '\n' ' '

