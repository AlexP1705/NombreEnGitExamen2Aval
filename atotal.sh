#!/bin/bash
ciudad="CIUDAD"
consumo="CONSUMO"
ciudad=$(grep "$ciudad" consumos.txt | awk '{print $1}' | tail -n +2)
consumo=$(grep "$consumo" 'NR>1 {total += $4} END {print total}' consumos.txt)
echo "El consumo total de la ciudad es : $consumo"