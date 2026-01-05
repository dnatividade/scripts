@echo off
cls
echo #######################################
echo Desativa Proxy Versao 2.0 - 26/01/2015
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo #######################################

echo.
echo Configurando Registro do Windows ...
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 00000000 /f

echo Proxy desativado com sucesso!

echo.
pause
REM exit
