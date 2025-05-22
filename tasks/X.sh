#!/bin/bash
read n
for ((i = 0; i < n; i++)); do
        read str
        if [[ "${str}." =~ ^((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.){4}$ ]]
        then echo IPv4
        else
		if [[ "${str}:" =~ ^([0-9a-f]{1,4}:){8}$ ]]
        	then echo IPv6   
        	else echo Neither
		fi
        fi
done


