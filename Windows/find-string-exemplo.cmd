@echo off
cls
echo ####################################################################################
echo Script GENERICO procurar um  termo em uma string.
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

ping 8.8.8.8 |findstr /R /I "tempo"
