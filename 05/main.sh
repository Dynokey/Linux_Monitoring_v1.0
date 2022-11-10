#/bin/bash/
source "../03/color.sh"

len=$(expr length "$1")
str=`echo $1`
sym=${str:($len-1):1}

err=0

if [[ $# -ne 1 ]]||[[ '/' != $sym ]]
    then
    err=1
    echo -e "${UNDERLINE} ${LBLUE} Incorrect input${NORMAL}"
fi

# chmod +x 1_task.sh
# sudo bash 1_task.sh $1

# chmod +x 2_task.sh
# sudo bash 2_task.sh $1

# chmod +x 3_task.sh
# sudo bash 3_task.sh $1

# chmod +x 4_task.sh
# sudo bash 4_task.sh $1

chmod +x 5_task.sh
sudo bash 5_task.sh $1

# chmod -x 1_task.sh
# chmod -x 2_task.sh
# chmod -x 3_task.sh