#!/bin/bash
if [[ $2 -eq 1 ]]
then
    sed -i 's/echo -en/echo -en ${WHITE}${BOLD}/g' script.sh
elif [[ $2 -eq 2 ]]
then
    sed -i 's/echo -en/echo -en ${RED}${BOLD}/g' script.sh
elif [[ $2 -eq 3 ]]
then
    sed -i 's/echo -en/echo -en ${GREEN}${BOLD}/g' script.sh
elif [[ $2 -eq 4 ]]
then
    sed -i 's/echo -en/echo -en ${BLUE}${BOLD}/g' script.sh
elif [[ $2 -eq 5 ]]
then
    sed -i 's/echo -en/echo -en ${MAGENTA}${BOLD}/g' script.sh
elif [[ $2 -eq 6 ]]
then
    sed -i 's/echo -en/echo -en ${BLACK}${BOLD}/g' script.sh
fi