#!/bin/bash
ciudad="CIUDAD"
mes="MES"
ciudad=$(grep "$ciudad" consumos.txt | awk '{print $1}' | tr -d ' ')
mes=$(grep "$mes" consumos.txt | awk '{print $2}' | tr -d ' ')
consumo1=$(grep "$consumo1" 'NR>1 {total += $4} END {print total}' consumos.txt)
consumo2=$(grep "$consumo2" 'NR>1 {total += $4} END {print total}' consumos.txt)
echo "Consumo maximo: $consumo1"
echo "Consumo minimo: $consumo2"