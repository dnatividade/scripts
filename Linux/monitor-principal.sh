#!/bin/bash
clear
echo ####################################################################################
echo Scipt GENERICO para alterar o Monitor principal do computador
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################


xrandr --output "HDMI-1" --primary
xrandr --output "HDMI-1" --left-of "VGA-1"

exit 0
