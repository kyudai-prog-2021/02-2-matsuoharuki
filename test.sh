#!/bin/sh
N=1

git -add -A
git commit -m 'new test'

for ((i=1;i<=N;i++))
do 
flag=$(bash test$i.sh)
echo $flag
done
