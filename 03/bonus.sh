#!/bin/bash/
source "color.sh"
echo $1
echo "#!/bin/bash" > script.sh
echo '' >> script.sh
echo "source "color.sh"" >> script.sh
echo '' >> script.sh
cat ../02/script.sh >> script.sh
sed -i '5d' script.sh
chmod +x script.sh
chmod +x col_fon_1.sh
chmod +x col_fon_2.sh
chmod +x col_txt_1.sh
chmod +x col_txt_2.sh
sed -i 's/echo/echo ${INVERSE}/g' script.sh
sed -i '/^echo/s/ = / = ${INVERSE}/g' script.sh
. col_fon_1.sh
. col_fon_2.sh
. col_txt_1.sh
. col_txt_2.sh
sed -i '/^echo/s/$/\${NORMAL}; echo/g' script.sh
. script.sh
rm script.sh