@echo off
cls
echo #############################################################
echo Monitorando COnexoes Ativas 1.0 - 14/09/2017
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo #############################################################

echo.
echo Monitorando conexoes ativas (TCP e UDP) (Ctrl+C para cancelar). . .
netstat -n -p UDP -p TCP -b -t 2
pause
