#!/bin/bash

# CONNECTIVA REDES DE COMPUTADORES LTDA
#
# @dnat
#
# Script para apagar, recursivamente, diretorios vazios,
# a partir do diretório atual deste script.
#
# Data: 2024-12-03

# Caminho do diretório para excluir subdiretórios vazios, recursivamente
diretorio="./"

# Encontrar e remover diretorios vazios recursivamente
find "$diretorio" -type d -empty -depth -exec rmdir {} \;

echo "Diretórios vazios removidos recursivamente em $diretorio"

