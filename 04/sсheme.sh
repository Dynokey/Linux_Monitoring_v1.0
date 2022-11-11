#!/bin/bash
source "../03/color.sh"
echo
if [[ $1 -eq 6 ]]&&[[ $2 -eq 1 ]]&&[[ $3 -eq 2 ]]&&[[ $4 -eq 4 ]]
    then
    echo -e "${BGBLACK}${LWHITE}Column 1 background = default (black)${NORMAL}"
    echo -e "${BGGRAY}${LBLACK}Column 1 font color = default (white)${NORMAL}"
    echo -e "${BGRED}${LBLUE}Column 2 background = default (red)  ${NORMAL}"
    echo -e "${BGBLUE}${LBRED}Column 2 font color = default (blue) ${NORMAL}"
else
    echo
    back_1=`echo '(white) (red) (green) (blue) (purple) (black)' | awk '{ print $'$1' }'`
    font_1=`echo '(white) (red) (green) (blue) (purple) (black)' | awk '{ print $'$2' }'`
    back_2=`echo '(white) (red) (green) (blue) (purple) (black)' | awk '{ print $'$3' }'`
    font_2=`echo '(white) (red) (green) (blue) (purple) (black)' | awk '{ print $'$4' }'`

    echo -e "${LYELLOW}Column 1 background = $1 $back_1${NORMAL}"
    echo -e "${LYELLOW}Column 1 font color = $2 $font_1${NORMAL}"
    echo -e "${LYELLOW}Column 2 background = $3 $back_2${NORMAL}"
    echo -e "${LYELLOW}Column 2 font color = $4 $font_2${NORMAL}"
fi
