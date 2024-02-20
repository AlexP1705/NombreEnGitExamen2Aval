#!/bin/bash
ciudad="CIUDAD"
ciudad=$(awk '{print $1}' consumos.txt)

if [ "$consumo" -gt 0 ]; then
  media_consumo=$(awk "BEGIN { printf \"%.4f\"$consumo}")
  echo "$ciudad tiene una media de consumo de $media__consumo."
fi