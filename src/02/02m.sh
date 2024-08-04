#!/bin/bash

. ./get_info
. ./print_info

if [ $# != 0 ];
then
    echo "Error: no arguments required"
else
    get_info
    print_info
    echo "Save data to a file? (Y/N)"
    read answer
    if [[ $answer = "Y" || $answer = "y" ]]
    then 
    today=`date "+%d_%m_%y_%H_%M_%S"`
    print_info > "$today.status"
    fi
fi
exit 0