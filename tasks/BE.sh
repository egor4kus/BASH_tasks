#!/bin/bash
read text; read s
if echo "$text" | grep -q "$s"; then echo YES
else echo NO
fi
