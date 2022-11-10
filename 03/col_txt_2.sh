#!/bin/bash
if [[ $4 -eq 1 ]]
then
    sed -i '/^echo/s/ = / = ${WHITE}${BOLD}/g' script.sh
elif [[ $4 -eq 2 ]]
then
    sed -i '/^echo/s/ = / = ${RED}${BOLD}/g' script.sh
elif [[ $4 -eq 3 ]]
then
    sed -i '/^echo/s/ = / = ${GREEN}${BOLD}/g' script.sh
elif [[ $4 -eq 4 ]]
then
    sed -i '/^echo/s/ = / = ${BLUE}${BOLD}/g' script.sh
elif [[ $4 -eq 5 ]]
then
    sed -i '/^echo/s/ = / = ${MAGENTA}${BOLD}/g' script.sh
elif [[ $4 -eq 6 ]]
then
    sed -i '/^echo/s/ = / = ${BLACK}${BOLD}/g' script.sh
fi