@echo off
cls
echo #############################################################
echo Testa Porta TCP 1.0 - 14/09/2017
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo #############################################################

echo.
echo Digite o IP/HOSTNAME do servidor:
set /p servidor=
echo .
echo Agora digite a PORTA TCP que deseja testar:
set /p porta=
echo.
echo.

echo Testando a porta %porta% do servidor %servidor% ...
telnet %servidor% %porta%
pause
