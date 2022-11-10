#!/bin/bash/

sort_all=$(du -kaB K $1)
# echo -n "$sort_all"
echo $(sort_all | wc -l)
# only_fails="$(find $sort_all -type f)"
# # echo -n "$only_fails"
# echo "$(du -kaB K $only_fails | sort -rh | head -10)" > top_fails.txt
# # echo -n "$( du -kaB K $only_fails)"
# echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
# echo "$res"
 