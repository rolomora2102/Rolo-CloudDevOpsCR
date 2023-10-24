#!/bin/bash

num=$1
zero=0
result=$((num%2))



if [[ $result -eq $zero ]];
then
    echo "El numero " $num " SI es par."
else
    echo "El numero " $num " NO es par."
fi