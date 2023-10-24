#!/bin/bash

script1="./1_par_impar.sh"
script2="./2_path_details.sh"
script3="./3_delete_ext_files.sh"
script4="./4_check_net.sh"


echo "Gracias por utilizar mis utilidades, por favor selecciona un script
1. Verifica si es par o impar.
2. Muestra el tamaño y los archivos que contine.
3. Elimina todos los archivos de una extension de un directorio que quieras.
4. Verifica si tienes conexion a internet (por lo menos conexion positiva)."

read selection

if [ $selection -eq "1" ]; then 
    echo "Has seleccionado el script 1 para verificar si un numero es par o impar. Por favor escribe el numero a verificar:"
    read selection
    permission=$(chmod +x $script1)
    $script1 $selection

elif [ $selection -eq "2" ]; then 
    echo "Has seleccionado el script 2 para mostrar el paso y los archivos de un directorio. Por favor escribe el path: "
    read selection
    permission=$(chmod +x $script2)
    $script2 $selection

elif [ $selection -eq "3" ]; then 
    echo "Has seleccionado el script 3 para borrar los archivos de un directorio que tengan la extension que especifiques. Por favor escribe el path y el extension
    (Ejemplo: /home/ec2-user/coding/sshCodes/Tarea1/TestDelete .txt): "
    read selection
    permission=$(chmod +x $script3)
    $script3 $selection

elif [ $selection -eq "4" ]; then 
    echo "Has seleccionado el script 4 para verificar conectividad y respuesta a internet. Por favor escribe el una direccion web
    (Ejemplo: www.google.com): "
    read selection
    permission=$(chmod +x $script4)
    $script4 $selection
    
else
    echo "La respuesta no ha sido valida, el programa se cerrara"
    exit

fi