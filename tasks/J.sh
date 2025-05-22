#!/bin/bash

read n
sum=0
for ((i = 0; i < n; i++)); do
	read cur
	((sum += cur))
done

if ((sum == 0)); then echo 0.000
else
	if ((sum < n)); then echo -n 0; fi
	echo "res=$sum / $n; res += 0.0005; scale = 3; res / 1.0" | bc -l
fi
