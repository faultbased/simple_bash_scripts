#!/bin/bash

NUM=(1 2 4 six 8 "this is ten")

#calls that specified indexed array
echo ${NUM[0]}
#the number of indexes?
echo ${#NUM[@]}
#?
echo ${!NUM[@]}
#appends to the array
NUM+=12
#calls only the items indexed between those numbers specified
echo ${NUM[@]:2:4}
