#!/bin/bash
## This script will demonstrate an if-then conditional ##

echo "choose a number between 1-10"
read number
echo
if [[ $number > 5 ]]; then
    echo "You have a large number!"

fi