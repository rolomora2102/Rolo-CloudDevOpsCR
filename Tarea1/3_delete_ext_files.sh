#!/bin/bash


#https://unix.stackexchange.com/questions/42020/how-can-i-delete-all-files-with-a-particular-extension-in-a-particular-folder
#https://www.warp.dev/terminus/bash-concatenate-strings#:~:text=user-defined%20inputs.-,Basic%20Concatenation,Y%7D"%20%23%20Output%20StringConcatenation!


#You can use the folder TestDelete, to delete txt files :)

path=$1'/'
ext='*'$2

remove=$(rm $path$ext)

echo "Se han borrado los archivos " $ext " del directorio " $path

