#!/bin/bash

. ./get_info
. ./print_info_colors
. ./colors

check='^[1-6]$'

if [ $# -eq 4 ];
then
    if [[ $1 =~ $check && $2 =~ $check && $3 =~ $check && $4 =~ $check ]];
    then
        if (( $1 != $2 && $3 != $4 ));
            then
                get_info 
                get_color "$1" "$2" "$3" "$4"
                print_info_colors
            else
                echo "Error: color palette unacceptable. Use different colors for text and bachground."
        fi
    else
        echo "Error: wrong parameters. Use colors from 1 to 6."
    fi
else
    echo "Error: 4 parameters required."
fi
exit 0