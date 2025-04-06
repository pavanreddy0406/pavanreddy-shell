#!/bin/bash/
#it can called as arrey,insted of single value it can hold multiple values
PERSONS=("pavan" "ramesh" "suresh")
#inside the arrey we always refers the vaules with index and its starts from 0
echo "first person: ${PERSONS[0]}"
echo "second person: ${PERSONS[@]}"
echo "all persons: ${PERSONS[@]}"
