#!/bin/bash

. ./get_info
. ./print_info_colors
. ./colors.conf
. ./colors_co

check='^[1-6]$'

if [ $# -eq 0 ];
then
    set_color
    if [[ $column1_background =~ $check && $column1_font_color =~ $check 
    && $column2_background =~ $check && $column2_font_color =~ $check ]] ;
    then
        if [[ $column1_background != $column1_font_color && $column2_background != $column2_font_color ]];
            then
                get_info 
                get_color_co
                print_info_colors
                printf "\n"
                print_colors
            else
                echo "Error: color palette unacceptable. Use different colors for text and bachground."
        fi
    else
        echo "Error: wrong parameters. Use colors from 1 to 6."
    fi
else
    echo "Error: parameters are stored in colors.conf."
fi
exit 0