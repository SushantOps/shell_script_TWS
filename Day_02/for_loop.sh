#!/bin/bash

<< comment
1 is 1st argument which is folder name
2 is 2nd argument whcih is start range
3 is 3rd argument whcih is end range

comment

for (( num=$2 ; num<=$3 ; num++ ))
do
        mkdir "$1$num"
done