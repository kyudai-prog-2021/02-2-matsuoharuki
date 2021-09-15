#!/bin/sh
rm ./test1 
gcc main.c -o test1

./test1 >./data1/result.txt

git log --oneline -n 1 | cut -d ' ' -f 1  >>log.txt

./test1 > ./data1/result.txt
check=`diff ./data1/output.txt ./data1/result.txt`

if test $check -z
then
    echo "test1 success"
    exit 0
else
    echo 'test1 failed'
    exit 1
fi

    