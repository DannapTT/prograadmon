#!/bin/bash 
archivo_entrada="$1"
directorio_destino="$2"

nombre_archivo=$(basename "$archivo_entrada")

fecha=$(date "+ %Y-%m-%d")

archivo_respaldo="$directorio_destino/${nombre_archivo}_${fecha}"

echo "$USER" > "$archivo_respaldo"
cat "$archivo_entrada" >> "$archivo_respaldo"
