@echo off
cls
echo ##############################################################
echo Sincronizar data/hora com um servidor na rede 1.0 - 26/01/2015
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo ##############################################################

echo.
echo Digite o nome ou IP do SERVIDOR (na rede interna):
set /p serv= 
net time \\%serv% /set /yes

echo.
pause