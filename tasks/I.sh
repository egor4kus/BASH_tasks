#!/bin/bash
read str
echo $(echo "scale = 3; $str" | bc -l)
