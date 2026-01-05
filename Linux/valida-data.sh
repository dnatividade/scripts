#!/bin/bash
clear
echo ####################################################################################
echo Script GENERICO para validar uma data/hora
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################


DATE="**** Backup 2023-06-06 23:01:25"

if [[ $DATE =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}\ [0-9]{2}:[0-9]{2}:[0-9]{2}$ ]]; then
    echo "Data e hora válidas"
else
    echo "Data e hora inválidas"
fi

