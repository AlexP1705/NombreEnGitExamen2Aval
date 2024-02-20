#!/bin/bash
ciudad="CIUDAD"
ciudad=$(grep "$ciudad" consumos.txt | awk '{print $1}' | tr -d ' ')

if [ $media_consumo -le 400 ]; then
    echo "ECO"
elif [ $media_consumo -ge 400 ]; then
    echo "NO ECO"
fi
echo "Es $media_consumo."