@echo off
cls
echo ####################################################################################
echo Script para desativa e reativar uma interface de rede
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

set rede="Rede Local"

netsh interface set interface name=%rede% admin=disabled
netsh interface set interface name=%rede% admin=enabled


