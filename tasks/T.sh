#!/bin/bash

base_str="____________________________________________________________________________________________________"
for ((i = 1; i <= 63; i++)); do
	t[i]=$base_str
done

set() {
	local x=$1; local y=$2
	t[y]="${t[y]:0:x}1${t[y]:x+1}"
}

solve() {
	local iter=$1
	local len=$2
	local x=$3
	local y=$4

	for ((i = 0; i < len; i++)); do
		set $x $y
		((y--))
	done
	((y++))
	for ((i = 1; i <= len; i++)); do
		set $((x - i)) $((y - i))
		set $((x + i)) $((y - i))
        done

	((iter--))
	if ((iter > 0)); then
		solve $iter $((len / 2)) $((x - len)) $((y - len - 1))
		solve $iter $((len / 2)) $((x + len)) $((y - len - 1))
	fi
}

read cnt
solve $cnt 16 49 63
IFS=$'\n'
echo "${t[*]}"
