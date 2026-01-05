@echo off
cls
echo ###########################################################################
echo Desativa Firewall di Windows (para todos os perfis) Versao 1.0 - 03/02/2025
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ###########################################################################

echo.
netsh advfirewall set allprofiles state off

exit 0
