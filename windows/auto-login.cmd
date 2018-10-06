@echo off
cls
echo #############################################################
echo Configura Login Automatico no Windows Versao 2.0 - 26/01/2015
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo #############################################################

echo.
echo Digite o NOME do usuario que quer logar automaticamente:
set /p usuario=
echo .
echo Agora digite a SENHA do usuario:
set /p senha=

echo Configurando Registro do Windows ...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_SZ /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /t REG_SZ /d %usuario% /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /t REG_SZ /d %senha% /f
