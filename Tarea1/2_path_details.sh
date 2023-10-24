#!/bin/bash

path=$1
# https://unix.stackexchange.com/questions/93820/how-to-extract-the-file-size-with-du
# https://www.redhat.com/sysadmin/du-command-options
du=$(du -smh $path | awk '{print $1}')
ls=$(ls $path)

echo "El tamaño del directorio (" $path ") es de " $du " y contiene los siguientes archivos/carpetas: "
echo $ls