#!/bin/bash
read n
for ((i = 0; i < n; i++)); do
	read s
	while [[ "$s" =~ ^(.*)\<\ */?([^\ \>/]+)  ]]; do
		arr+=( ${BASH_REMATCH[2]} )
		s="${BASH_REMATCH[1]}"
	done
done

IFS=$'\n'
ans=( `echo "${arr[*]}" | sort | uniq` )
IFS=$';'
echo "${ans[*]}"
