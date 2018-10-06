@echo off
cls
echo #########################################################
echo Desativar IPv6 Win Vista/7/2k8 - Versao 1.0 - 25/03/2015
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo #########################################################
echo.
echo.

echo Desativando Protocolo IPv6 ...
echo.
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters /v DisabledComponents /t REG_DWORD /d 255 /f
echo.
echo.

echo Processo concluido!
pause
