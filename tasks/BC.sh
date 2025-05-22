#!/bin/bash
read n
for ((i = 0; i < n; i++)); do
	read s
	s=" $s"
	while [[ "$s" =~ ^(.*[^-a-zA-Z0-9.!#$%&\'*+/=?^_\`{|}~-])([-a-zA-Z0-9.!#$%&\'*+/=?^_\`{|}~-]+@[-a-zA-Z0-9]+(\.[-a-zA-Z0-9]+)+)(.*)$ ]]; do
		arr+=( ${BASH_REMATCH[2]} )
		s=" ${BASH_REMATCH[1]}"
	done
done

IFS=$'\n'
ans=( `echo "${arr[*]}" | sort | uniq` )
IFS=$';'
echo "${ans[*]}"
