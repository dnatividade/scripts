@echo off
cls
echo #############################################################
echo Tracando a rota para a Internet Versao 1.0 - 14/09/2017
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo #############################################################

set host=1.1.1.1
echo.
echo Tracando rota para 8.8.4.4, sem resolver DNS (CTRL+C para cancelar). . .
tracert -d %host%
pause
