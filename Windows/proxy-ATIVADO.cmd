@echo off
cls
echo ###############################################
echo Configura e Ativa Proxy Versao 2.0 - 26/01/2015
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ###############################################

echo.
echo Digite o IP do PROXY
set /p proxy=
echo .
echo Agora digite a PORTA do PROXY
set /p porta=

echo Configurando Registro do Windows ...
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v MigrateProxy /t REG_DWORD /d 00000001 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 00000001 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyHttp1.1 /t REG_DWORD /d 00000000 /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d %proxy%":"%porta% /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "<local>" /f

echo Proxy ativado com sucesso!

echo.
pause
REM exit
