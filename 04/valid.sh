#/bin/bash/

source "../03/color.sh"

re=^[1-6]?$

val_1=$(cat param.txt | awk 'NR == 1'| awk -F"=" '{print $NF}')
val_2=$(cat param.txt | awk 'NR == 2'| awk -F"=" '{print $NF}')
val_3=$(cat param.txt | awk 'NR == 3'| awk -F"=" '{print $NF}')
val_4=$(cat param.txt | awk 'NR == 4'| awk -F"=" '{print $NF}')

: ${val_1:=6}
: ${val_2:=1} 
: ${val_3:=2} 
: ${val_4:=4} 

len_1="$(sed -n 1p param.txt)"
len_2="$(sed -n 2p param.txt)"
len_3="$(sed -n 3p param.txt)"
len_4="$(sed -n 4p param.txt)"

flag_err=0

if [[ $# -ne 0 ]]
    then
    flag_err=1
    echo -e "${LYELLOW}Передача параметров через командную строку не предусмотрена.${NORMAL}"
fi

str_1=$(cat param.txt | head -n1 | cut -c1-19)
str_2=$(cat param.txt | head -n2 | tail -n 1 | cut -c1-19)
str_3=$(cat param.txt | head -n3 | tail -n 1 | cut -c1-19)
str_4=$(cat param.txt | head -n4 | tail -n 1 | cut -c1-19)

str_1_1="column1_background="
str_2_2="column1_font_color="
str_3_3="column2_background="
str_4_4="column2_font_color="

if [[ flag_err -eq 0 ]]
    then
    if [[ $str_1 != $str_1_1 ]]||[[ $str_2 != $str_2_2 ]]||[[ $str_3 != $str_3_3 ]]||[[ $str_4 != $str_4_4 ]]
        then
        flag_err=1
        cat param_def.txt > param.txt
        echo -e "${LYELLOW}Не допускается редактирование конфигурационных файлов. Установлена схема по умолчанию.${NORMAL}"
    fi
fi

if [[ flag_err -eq 0 ]]
    then
    for var in ${#len_1} ${#len_2} ${#len_3} ${#len_4}
    do
        if [[ $var -eq 20 ]]||[[ $var -eq 19 ]]
            then
            continue
        else 
            flag_err=1
            cat param_def.txt > param.txt
            echo -e "${LYELLOW}После знака '=' должен быть только 1 символ. Установлена default schema${NORMAL}"
            break
        fi
    done
fi

if [[ flag_err -eq 0 ]]
    then
    for var in $val_1 $val_2 $val_3 $val_4
    do
        if [[ $var =~ $re ]]
            then
            continue
        else
            flag_err=1
            echo -e "${LYELLOW}Ошибка. В качестве параметров принимаются цифры от 1 до 6${NORMAL}"
            break
        fi
    done
fi


if [[ flag_err -eq 0 ]] 
    then
    if [[ $val_1 -eq $val_2 ]]||[[ val_3 -eq val_4 ]]
        then
        flag_err=1
        echo -e "${LYELLOW}Ошибка. Цвет шрифта не должен совпадать с цветом фона${NORMAL}"
    fi
fi

if  [[ flag_err -eq 0 ]]
    then
    return 0
else
    return 1
fi

