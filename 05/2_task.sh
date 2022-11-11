#!/bin/bash
# IFS=$'/n'

echo "$(du -Sk $1 | sort -rh | head -5)" > top_dir.txt

count=$(wc -l top_dir.txt | awk '{print $1}')

for (( i=1; i <= $count; i++ ))
do
    str_num=$(cat top_dir.txt | awk 'NR == '$i' '),
    echo -n $i' - '
    printf '%s' $(echo -n $str_num | awk '{print $2}')
    num=$(cat top_dir.txt | awk 'NR == '$i''| awk '{print $1}')

    if [[ num -lt 1000 ]]
        then
        echo  ' '$num MB
    else
        let num=$num/1000
        echo  ' '$num GB
    fi
done

rm top_dir.txt