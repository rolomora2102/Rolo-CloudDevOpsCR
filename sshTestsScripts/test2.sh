#!/usr/bin/bash
echo "Today is" `date`

echo -e "\nCual es su nombre:"
read name

echo -e "Hola " $name

echo -e "\nCual directiorio te gustaria revisar?"
read dir

echo -e "\nLos contenidos del directorio " $dir " son los siguientes:\n"
ls $dir
