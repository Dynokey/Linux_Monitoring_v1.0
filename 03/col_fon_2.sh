#!/bin/bash
if [[ $3 -eq 1 ]]
then
    sed -i '/^echo/s/ = / = ${BGGRAY}/g' script.sh
elif [[ $3 -eq 2 ]]
then
    sed -i '/^echo/s/ = / = ${BGRED}/g' script.sh
elif [[ $3 -eq 3 ]]
then
    sed -i '/^echo/s/ = / = ${BGGREEN}/g' script.sh
elif [[ $3 -eq 4 ]]
then
    sed -i '/^echo/s/ = / = ${BGBLUE}/g' script.sh
elif [[ $3 -eq 5 ]]
then
    sed -i '/^echo/s/ = / = ${BGMAGENTA}/g' script.sh
elif [[ $3 -eq 6 ]]
then
    sed -i '/^echo/s/ = / = ${BGBLACK}/g' script.sh
fi