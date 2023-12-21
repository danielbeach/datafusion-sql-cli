#! /bin/bash

command=$1
format=$2
data=$3

c="datafusion-cli --quiet --command \"$command\" --format $format --data-path $data | tee results.txt"
eval $c
