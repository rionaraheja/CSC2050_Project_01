#!/bin/bash

if [ $# -ne 3 ]; then # checks if there is 3 arguments given
    echo "Usage: ./unit_test.sh <program> <argument> <expected_output>"
    exit 1
fi

program=$1 #storing inputs in variables
argument=$2
expected=$3

actual=$($program $argument) #runs factorial stores in actual

if [ "$actual" = "$expected" ]; then #if actual is the same as expected
    echo "PASS" #pass
else #otherwise print fail and what it was and should be
    echo "FAIL"
    echo "Expected: $expected"
    echo "Got: $actual"
fi
