# bash update.sh
#
rm dict/*.dict

mkdir dict
mkdir tmp
cd tmp
wget -N https://dl.fbaipublicfiles.com/arrival/dictionaries.tar.gz
tar -xzvf dictionaries.tar.gz

rename "s/\.txt$/.dict/" dictionaries/*.txt

mv dictionaries/??-??.dict ../dict
rm -rf dictionaries
cd -

cd dict
awk -i inplace -F'[ \t]+' '{ print $2 " @ " $1 }' *.dict
cd -