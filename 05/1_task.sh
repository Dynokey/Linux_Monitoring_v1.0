#!/bin/bash/

echo "Total number of folders (including all nested ones) =" $(expr $(find $1 -type d | wc -l) - 1)
# echo "Total number of folders (including all nested ones) =" $(expr $(ls -la $1| grep ^d | wc -l) - 1)
# tree -d $1