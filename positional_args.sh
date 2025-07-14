#!/bin/bash
clear
if [[ -z $1 ]]; then
    echo "Please pass argumenst first argument is yourname, second argument is your surname and the last argument is your age."
    echo 
    echo "Example: ./positional_args.sh John Doe 30"
    exit 1;
fi
echo "Positonals Arguments Script"
echo
echo "First Name : $1"
echo "Last Name : $2"
echo "Age : $3"
echo 
echo "Total arguments passed : $#"
echo
echo "Args list : $@"