#!/bin/bash 
archivo_entr="$1"
directorio_dest="$2"

nombre_archivo=$(basename "$archivo_entr")

fecha=$(date "+ %Y-%m-%d")

archivo_res="$directorio_dest/${nombre_archivo}_${fecha}"

echo "$USER" > "$archivo_res"
cat "$archivo_entr" >> "$archivo_res"
