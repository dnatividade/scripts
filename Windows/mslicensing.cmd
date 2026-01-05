@echo off
cls
echo ##################################################################
echo Fix MS Licensing para Windows 7-10 - 20/10/2021
echo ERRO 0X0000011B - impressao
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ##################################################################
echo.

reg DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSLicensing /f

exit 0
