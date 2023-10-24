#!/bin/bash

#You can use this bucket to test the error response https://s3bucketfileoperations.s3.amazonaws.com/IMG-20231012-WA0009.jpg

url=$1

response=$(curl --write-out '%{http_code}' --silent --output /dev/null $url)

if [ $response -eq 200 ]; then
    echo "Estás en línea, con una respuesta del servidor de: $response OK"
else
    echo "Parece que has tenido un problema --> Details: " $response
fi
