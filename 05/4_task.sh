#/bin/bash/

echo "Number of:" 
echo "Configuration files (with the .conf extension)" = $(find $1 -type f -name "*.conf" | wc -l)
echo "Text files =" $(find $1 -type f -name "*.txt" | wc -l)  
echo "Executable files =" $(find $1 -type f -name "*.sh" | wc -l)
echo "Log files (with the extension .log) =" $(find $1 -type f -name "*.log" | wc -l)
zip=$(find $1 -type f -name "*.zip" | wc -l)
rar=$(find $1 -type f -name "*.rar" | wc -l)
arj=$(find $1 -type f -name "*.arj" | wc -l)
cab=$(find $1 -type f -name "*.cab" | wc -l)
tar=$(find $1 -type f -name "*.tar" | wc -l)
lzh=$(find $1 -type f -name "*.lzh" | wc -l)
echo "Archive files =" $(expr $zip + $rar + $arj + $cab + $tar + $lzh)
echo "Symbolic links =" $(find $1 -type l | wc -l)
