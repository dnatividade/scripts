@echo off
cls
echo ##################################################################
echo Fix para Windows 10 - 20/10/2021
echo ERRO 0X0000011B - impressao
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ##################################################################
echo.

echo ERRO 0X0000011B
echo.
echo Ajustando registro do Windows . . .
REG ADD "HKLM\SYSTEM\CURRENTCONTROLSET\CONTROL\PRINT" /v RpcAuthnLevelPrivacyEnabled /t REG_DWORD /d 00000000 /f
echo.

echo Parando Spooler . . .
net stop spooler

echo.
echo Excluido arquivos . . .
del /f /s %systemroot%\system32\spool\PRINTERS\*.SHD
del /f /s %systemroot%\system32\spool\PRINTERS\*.SPL

echo.
echo Iniciando Spooler novamente . . .
net start spooler

echo.
pause
