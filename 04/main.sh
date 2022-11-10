#!/bin/bash

source "../03/color.sh"

chmod +x valid.sh
. valid.sh

err=$?

if [[ $err -ne 1 ]]
    then

    source "../03/col_fon_1.sh"
    source "../03/col_fon_2.sh"
    source "../03/col_txt_1.sh"
    source "../03/col_txt_2.sh"
    
    echo "#!/bin/bash" > script.sh
    echo '' >> script.sh
    echo "source "../03/color.sh"" >> script.sh
    echo '' >> script.sh
    cat ../02/script.sh >> script.sh
    sed -i '5d' script.sh
    chmod +x script.sh
    chmod +x sсheme.sh
    chmod +x ../03/col_fon_1.sh
    chmod +x ../03/col_fon_2.sh
    chmod +x ../03/col_txt_1.sh
    chmod +x ../03/col_txt_2.sh

    val_1=$(cat param.txt | awk 'NR == 1'| awk -F"=" '{print $NF}')
    val_2=$(cat param.txt | awk 'NR == 2'| awk -F"=" '{print $NF}')
    val_3=$(cat param.txt | awk 'NR == 3'| awk -F"=" '{print $NF}')
    val_4=$(cat param.txt | awk 'NR == 4'| awk -F"=" '{print $NF}')
    
    : ${val_1:=6}
    : ${val_2:=1} 
    : ${val_3:=2} 
    : ${val_4:=4} 

    . ../03/col_fon_1.sh $val_1
    . ../03/col_fon_2.sh 0 0 $val_3
    . ../03/col_txt_1.sh 0 $val_2
    . ../03/col_txt_2.sh 0 0 0 $val_4
    sed -i '/^echo/s/$/\${NORMAL}; echo/g' script.sh
    . script.sh
    rm script.sh

    . sсheme.sh $val_1 $val_2 $val_3 $val_4


    chmod -x sсheme.sh
    chmod -x ../03/col_fon_1.sh
    chmod -x ../03/col_fon_2.sh
    chmod -x ../03/col_txt_1.sh
    chmod -x ../03/col_txt_2.sh
    else
        echo -e "${LYELLOW}Попробуйте еще раз${NORMAL}"
fi