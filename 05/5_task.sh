#!/bin/bash
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
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

    printf '%s' $(echo -n $str_num | awk '{print $2}')
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

    re=$(cat ../data/ext_for_script.txt)
    file_name=$(basename "$(echo -n $str_num | awk '{print $2}')" | sed 's/.$//')
    file_ext=`echo " ${file_name##*.}"`

    if [[ $file_ext =~ $re ]]
        then
        echo $file_ext
    else
        echo "Файл без расширения имеет формат" $(file $(echo -n $str_num | awk '{print $2}' | sed 'y/,/ /') | awk '{print $2, $3, $4, $5, $6, $7, $8'})
    fi
done


rm all_fails.txt err.txt top_10.txt

# count="$(find $1 -type f | wc -l)"
# count="$(cat all_fails.txt | wc -l)"
# for (( i=1; i <= $count; i++ ))
# do
#     str="$(cat all_fails.txt | head -n$i| tail -n1)"
#     if [[ -f $str ]]
#         then
#             echo $i
#         else
#             sed -i '$id' all_fails.txt
#             echo del
#     fi
# done
# echo -n "$all_fails"
# echo "($sort_all | wc -l)"

# myfail=../s21_school/D01_Linux-0/.git/objects/pack/pack-0df86016d1ec0c58a3e50444046e7c729a6f0c9b.pack
# if [[ -f $myfail ]]
#     then
#         echo
#         echo OK
#     fi
