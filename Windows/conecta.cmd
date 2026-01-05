@echo off
cls
echo ####################################################################################
echo Port Knoking
echo Script para se conectar a um servidor com firewall Port Knoking
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################


echo Iniciando a conexão com o servidor. Aguarde . . .
echo.

echo 1/4
start /b telnet 192.168.20.249 100
timeout 2 > nul
echo 2/4
start /b telnet 192.168.20.249 200
timeout 2 > nul
echo 3/4
start /b telnet 192.168.20.249 300
timeout 2 > nul
echo 4/4
start /b telnet 192.168.20.249 400
timeout 2 > nul

start mstsc
