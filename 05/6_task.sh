#!/bin/bash/

echo "$(find $1 -type f)" > all_fails.txt 
top_10="$(cat all_fails.txt)"
echo "$(du 2> err.txt -a $top_10 | sort -rh | head -10)" > top_10.txt

count="$(cat top_10.txt | wc -l)"

for (( i=1; i <= $count; i++ ))
do
    str_num=$(cat top_10.txt | awk 'NR == '$i' '),

    if [[ $i -eq 10 ]]
        then
        echo -n $i '- '
    else
        echo -n $i ' - '
    fi
    
    printf '%s' $(echo -n $str_num | awk '{print $2}'| sed 's/..//')
    num=$(cat top_10.txt | awk 'NR == '$i''| awk '{print $1}')

    if [[ num -lt 1000 ]]
        then
            echo -n ' '$num KB,' '
        elif [[ num -lt 1000000 ]] 
            then
            let num=$num/1000
            echo -n ' '$num MB,' '
        else
            let num=$num/1000000
            echo -n ' '$num GB,' '
    fi

hash=$(echo -n $str_num | awk '{print $2}' | sed 's/.$//')
echo $(md5sum $hash | awk '{print $1}')
done

rm all_fails.txt err.txt top_10.txt