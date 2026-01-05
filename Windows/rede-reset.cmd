@echo off
cls
echo ####################################################################################
echo *** USE APENAS EM ULTIMO CASO ***
echo.
echo Script para resetar as configurações de rede
echo Deve ser usado somente in loco, pois remotamente haverá perda de conexão
echo.
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

netsh INT IP RESET all
netsh winsock reset all
ipconfig /release
ipconfig /renew
ipconfig /flushdns
