#!/bin/bash
read n
for ((i = 0; i < n; i++)); do
	read str
	rs=$(echo $str | rev)
	while [[ "$rs" =~ .*(\>a/\<.*) ]]; do
		((len = ${#rs} - ${#BASH_REMATCH[1]}))
		str=`echo "${BASH_REMATCH[1]}" | rev`
		rs="${rs:0:len}"
		if [[ "${str}" =~ href\ ?=\ ?\"([^\"]*)\"[^\>]*\>(\<[^\>/]+\>)*([^\<]*)\< ]]
		then
			l="${BASH_REMATCH[1]}"
			name="${BASH_REMATCH[${#BASH_REMATCH[@]}-1]}"
			echo $(echo "$l" | sed 's/^ *//' | sed 's/ *$//'),$(echo "$name" | sed 's/^ *//' | sed 's/ *$//')
		fi
	done
done
