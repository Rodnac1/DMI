#!/bin/bash

read a
read b
c=`expr $a + $b`
echo "$a + $b"$c
