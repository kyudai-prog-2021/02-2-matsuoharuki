#!/bin/sh
N=1
for ((i=1;i<=N;i++))
do 
rm test$i
rm data$i/result.txt
done
