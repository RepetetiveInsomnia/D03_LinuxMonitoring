#!/bin/bash

if [ $# -eq 0 ];
then
    echo "Not enough arguments"
elif (( $# > 1));
then
    echo "Too many arguments"
elif [[ $1 =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]];
then
    echo "Error: argument $1 is number"
else
    echo  $1
fi
exit 0