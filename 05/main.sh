#/bin/bash
START_TIME=$(date +%s)

source "../03/color.sh"

len=$(expr length "$1")
str=`echo $1`
sym=${str:($len-1):1}

err=0

if [[ $# -ne 1 ]]||[[ '/' != $sym ]]
    then
    err=1
    echo -e "${UNDERLINE} ${LGREEN} Incorrect input${NORMAL}"
else

    echo -e "${UNDERLINE} ${LGREEN} Part 1${NORMAL}"
    chmod +x 1_task.sh
    sudo bash 1_task.sh $1
    echo -e "${UNDERLINE} ${LGREEN} Part 2${NORMAL}"
    chmod +x 2_task.sh
    sudo bash 2_task.sh $1
    echo -e "${UNDERLINE} ${LGREEN} Part 3${NORMAL}"
    chmod +x 3_task.sh
    sudo bash 3_task.sh $1
    echo -e "${UNDERLINE} ${LGREEN} Part 4${NORMAL}"
    chmod +x 4_task.sh
    sudo bash 4_task.sh $1
    echo -e "${UNDERLINE} ${LGREEN} Part 5${NORMAL}"
    chmod +x 5_task.sh
    sudo bash 5_task.sh $1
    echo -e "${UNDERLINE} ${LGREEN} Part 6${NORMAL}"
    chmod +x 6_task.sh
    sudo bash 6_task.sh $1

    chmod -x 1_task.sh
    chmod -x 2_task.sh
    chmod -x 3_task.sh
    chmod -x 4_task.sh
    chmod -x 5_task.sh
    chmod -x 6_task.sh
    
    echo -e "${UNDERLINE} ${LGREEN} Part 7${NORMAL}"
    END_TIME=$(date +%s)
    difference=$(( $END_TIME - $START_TIME ))
    echo "Script execution time (in seconds) = $difference"
fi