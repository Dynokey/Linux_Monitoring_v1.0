#!/bin/bash/
echo "Total number of files =" $(find $1 -type f | wc -l)
# echo "Total number of files =" $(ls -la $1 | grep "^-" | wc -l)
# echo "Total number of files =" $(ls -laR $1 | grep "^-" | wc -l)
# tree -af $1