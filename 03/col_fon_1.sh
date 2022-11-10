#!/bin/bash
if [[ $1 -eq 1 ]]
then
    sed -i 's/echo/echo -en ${BGGRAY}/g' script.sh
elif [[ $1 -eq 2 ]]
then
    sed -i 's/echo/echo -en ${BGRED}/g' script.sh
elif [[ $1 -eq 3 ]]
then
    sed -i 's/echo/echo -en ${BGGREEN}/g' script.sh
elif [[ $1 -eq 4 ]]
then
    sed -i 's/echo/echo -en ${BGBLUE}/g' script.sh
elif [[ $1 -eq 5 ]]
then
    sed -i 's/echo/echo -en ${BGMAGENTA}/g' script.sh
elif [[ $1 -eq 6 ]]
then
    sed -i 's/echo/echo -en ${BGBLACK}/g' script.sh
fi

# 1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black