#!/bin/bash

#locate a file
#check the file type
#uncompress the file
 
filename="$1"
filepath=$(locate $filename)
extension="${filename##*.}"
if [ $extension=="gz" ]
then
gzip -d $filepath

elif [ $extension=="zip" ]
then
unzip $filepath
elif [ $extension=="tar.gz" ]
then
tar -xvf $filepath
fi


#locate research.txt.gz

#gzip -d research.txt.gz

#rename file with line count 

var=$(cat "${filename%.*}" | wc -l)
echo $var
mv "${filename%.*}"  $var

#match the file  text one by one
mapfile -t < $var
for ((a=0,b=1; $b<${#MAPFILE[@]}; a++,b++)); do
     [[ ${MAPFILE[$a]} = ${MAPFILE[$b]} ]] && echo ${MAPFILE[$a]}
done > unique.txt


#creating a hard link of the file

ln ~/Desktop/bashfiles/unique.txt ~/Desktop/final.txt

#hide the file

mv unique.txt .unique.txt 


