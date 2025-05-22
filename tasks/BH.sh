#!/bin/bash
read s
n=${#s}
mx=0
for ((i = 0; i < n; i++)); do
	if ((${s:i:1} > ${s:mx:1}))
	then mx=$i; fi
done

if ((n % 2 == 1 && mx == n / 2)); then echo 0
else
	if ((mx < n / 2)); then echo -1
	else echo 1
	fi
fi
