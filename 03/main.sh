#!/bin/bash/
source "color.sh"

re=^[1-6]?$
flag=1

if [[ $1 =~ $re ]]&&[[ $2 =~ $re ]]&&[[ $3 =~ $re ]]&&[[ $4 =~ $re ]]
    then
    flag=0
fi

if [[ flag -eq 1 ]]
    then
    echo -e "${LYELLOW}В качестве параметров принимаются цифры от 1 до 6${NORMAL}"
elif [[ $# -eq 5 && $5 = 'sparrvio' ]]
    then
    echo -e "${LYELLOW} Инверсия${NORMAL}"
    chmod +x bonus.sh
    . bonus.sh
elif [[ $# -ne 4 ]]
    then
    echo -e "${LYELLOW} Необходимо ввести 4 параметра${NORMAL}"
elif [[ $1 -eq $2 || $3 -eq $4 ]]
    then
    echo -e "${LYELLOW}Цвет фона не должен совпадать с цветом шрифта${NORMAL}"
else
    echo "#!/bin/bash" > script.sh
    echo '' >> script.sh
    echo "source "color.sh"" >> script.sh
    echo '' >> script.sh
    cat ../02/script.sh >> script.sh
    sed -i '5d' script.sh
    chmod +x script.sh
    chmod +x col_fon_1.sh
    chmod +x col_fon_2.sh
    chmod +x col_txt_1.sh
    chmod +x col_txt_2.sh
    . col_fon_1.sh
    . col_fon_2.sh
    . col_txt_1.sh
    . col_txt_2.sh
    sed -i '/^echo/s/$/\${NORMAL}; echo/g' script.sh
    . script.sh
    rm script.sh

    chmod -x bonus.sh
    chmod -x col_fon_1.sh
    chmod -x col_fon_2.sh
    chmod -x col_txt_1.sh
    chmod -x col_txt_2.sh
fi
